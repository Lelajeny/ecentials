import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecentialsclone/src/BASEURL/BASEURL.dart';
import 'package:ecentialsclone/src/Widgets/EcentialsToast.dart';
import 'package:ecentialsclone/src/screens/AuthScreens/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthState extends ChangeNotifier {

  int _registerLoaderState = 0; // 0 = nothing, 1 = loading, 2= okay, 3 = failed
  int get registerLoaderState => _registerLoaderState;

  int _loginLoaderState = 0; // 0 = nothing, 1 = loading, 2= okay, 3 = failed
  int get loginLoaderState => _loginLoaderState;

  void registerNewUser(
      {Map<String, dynamic>? data, required BuildContext context}) async {
    _registerLoaderState = 0;
    _registerLoaderState = 1;
    notifyListeners();

    Dio dio = Dio();

    String path = APPBASEURL.BASEURL + "/api/v1/user/register";

    try {
      Response response = await dio.post(path, data: data);
      if (response.statusCode == 200) {
        _registerLoaderState = 2;
        notifyListeners();

        if (response.data['status'] == 200 &&
            response.data['message'] == "User created successfully") {
          ShowToast.ecentialsToast(
            message: "${response.data['message']}",
            warn: false,
          );

          // Go to the Login screen
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (builder) => Login()),
              (route) => false);
        } else {
          ShowToast.ecentialsToast(
            message: "${response.data['message']}",
          );
        }
      } else {
        // If there was an error while making the request
        ShowToast.ecentialsToast(
          message: "There was an error while making the request",
        );

        _registerLoaderState = 3;
        notifyListeners();
      }
    } catch (e) {
      log("There was an Error: $e");
        ShowToast.ecentialsToast(
          message: "There was an error while making the request",
        );
      _registerLoaderState = 3;
      notifyListeners();
    }
  }

  // Method to login a user and move home

  void loginUser(
      {Map<String, dynamic>? data, required BuildContext context}) async {

    _loginLoaderState = 0;
    _loginLoaderState = 1;
    notifyListeners();

    Dio dio = Dio();
    String path = APPBASEURL.BASEURL +"/api/v1/user/login";

    try {
      Response response = await dio.post(path, data: data);
      if (response.statusCode == 200) {

        _loginLoaderState = 2;
        notifyListeners();

        if (response.data['status'] == 200) {
          ShowToast.ecentialsToast(
            message: "${response.data['message']}",
            warn: false,
          );

          // Go to the Login screen
          // Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(builder: (builder) => Login()),
          //     (route) => false);
        } else {

          ShowToast.ecentialsToast(
            message: "${response.data['message']}",
          );

        }
      } else {

        // If there was an error while making the request
        ShowToast.ecentialsToast(
          message: "There was an error while making the request",
        );

        _loginLoaderState = 3;
        notifyListeners();

      }
    } catch (e) {

      // log("There was an Error: $e");
        ShowToast.ecentialsToast(
          message: "There was an error while making the request",
        );
      _loginLoaderState = 3;
      notifyListeners();

    }
  }

  void saveLoginSuccessState(bool value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('logged-in', value);
  }

  Future<bool> getLoginState() async {
    final prefs = await SharedPreferences.getInstance();

    final bool state = prefs.getBool('logged-in') ?? false;

    return state;
  }
}
