import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/UserDataModel.dart';
import '../BASEURL/BASEURL.dart';
import '../Widgets/EcentialsToast.dart';

class UserState extends ChangeNotifier {
  Map<String, dynamic>? _userInfo;
  Map<String, dynamic>? get userInfo => _userInfo;

  int _updateInfoLoaderState =
      0; // 0 = nothing, 1 = loading, 2= okay, 3 = failed
  int get updateInfoLoaderState => _updateInfoLoaderState;

  int _fetchInfoLoaderState =
      0; // 0 = nothing, 1 = loading, 2= okay, 3 = failed
  int get fetchInfoLoaderState => _fetchInfoLoaderState;

  UserDataModel? _userDataModel;
  UserDataModel? get userDataModel => _userDataModel;

  getStoreUserInfo() async {
    final prefs = await SharedPreferences.getInstance();

    String emptyUserInfo = json.encode({});

    final String state = prefs.getString('user_info') ?? emptyUserInfo;

    Map<String, dynamic> saveInfo = json.decode(state);

    log("LOCAL DATA: $saveInfo");

    _userInfo = saveInfo;

    notifyListeners();
  }

  void updateUserInfo(
      {Map<String, dynamic>? data, required String token}) async {
    _updateInfoLoaderState = 0;
    _updateInfoLoaderState = 1;
    notifyListeners();

    Dio dio = Dio();

    String path = APPBASEURL.BASEURL + "/api/v1/user/addEdit-personal-details";

    try {
      Response response = await dio.post(path,
          data: data, options: Options(headers: {"auth-token": token}));
      if (response.statusCode == 200) {
        _updateInfoLoaderState = 2;
        notifyListeners();

        if (response.data['status'] == 200) {
          ShowToast.ecentialsToast(
            message: "${response.data['message']}",
            warn: false,
          );
        } else {
          ShowToast.ecentialsToast(
            message: "${response.data['message']}",
          );

          _updateInfoLoaderState = 3;
          notifyListeners();
        }
      } else {
        // If there was an error while making the request
        log("status: ${response.statusCode}");
        ShowToast.ecentialsToast(
          message: "There was an error while making the request",
        );

        _updateInfoLoaderState = 3;
        notifyListeners();
      }
    } catch (e) {
      log("There was an Error: $e");
      ShowToast.ecentialsToast(
        message: "There was an error while making the request",
      );
      _updateInfoLoaderState = 3;
      notifyListeners();
    }
  }

  // Get User Info
  getUserInfoFromServer({required String? token}) async {
    _fetchInfoLoaderState = 0;
    _fetchInfoLoaderState = 1;
    notifyListeners();

    Dio dio = Dio();

    String path =
        APPBASEURL.BASEURL + "/api/v1/user/account/fetch-personal-details";

    try {
      Response response = await dio.post(path,
          options: Options(headers: {"auth-token": token}));
      if (response.statusCode == 200) {
        _fetchInfoLoaderState = 2;
        notifyListeners();

        if (response.statusCode == 200) {
          log("ONLINE DATA: ${response.data}");
          // UserDataModel(
          //   address: ,
          //   dob: ,
          //   gender: ,
          //   ghana_card_number: ,
          //   gps_coordinates: ,
          //   height: ,
          //   name: ,
          //   occupation: ,
          //   phone: ,
          //   weight: ,
          // );
        } else {
          log("Status Not 200");
          ShowToast.ecentialsToast(
            message: "Erro getting your data",
          );
          _fetchInfoLoaderState = 3;
          notifyListeners();
        }
      } else {
        // If there was an error while making the request
        ShowToast.ecentialsToast(
          message: "Error getting your data",
        );

        _fetchInfoLoaderState = 3;
        notifyListeners();
      }
    } catch (e) {
      log("There was an Error: $e");
      ShowToast.ecentialsToast(
        message: "Error getting your data",
      );
      _fetchInfoLoaderState = 3;
      notifyListeners();
    }
  }
}
