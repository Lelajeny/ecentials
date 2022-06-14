// ignore_for_file: file_names, prefer_const_constructors, unused_import, duplicate_impor, duplicate_ignore, duplicate_import
// ignore_for_file: file_names, prefer_const_constructors, unused_import

import 'package:ecentialsclone/src/Themes/colors.dart';
import 'package:ecentialsclone/src/Widgets/Dashboard.dart';
import 'package:ecentialsclone/src/Widgets/bottomNavBar.dart';
import 'package:ecentialsclone/src/Widgets/floatingAmbulance.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Chat/chat.dart';
import 'package:ecentialsclone/src/Widgets/searchForh.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/Hospital2DocProfile.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/Hospital3.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/LabDirection.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/doctorInformation.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/labSchedules.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/labChat.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/alllabs.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Lab/labDetails.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/cart.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/FindPharmacy.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/orderCompleted.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/orderProcessed.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/orderSubmitted.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/drugDashboard.dart';

import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/pharmacyDashboard.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/cart.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/scanResults.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/uploadResults.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/Pharmacy/scanDocument.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/homeScreen.dart';

import 'package:ecentialsclone/src/screens/UserScreens/Notifications/notifications.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'HospitalScreens/nearbyHospital.dart';

class MinuteClinic extends StatefulWidget {
  const MinuteClinic({Key? key}) : super(key: key);

  @override
  State<MinuteClinic> createState() => _MinuteClinicState();
}

class _MinuteClinicState extends State<MinuteClinic> {
  @override
  Widget build(BuildContext context) {
    final _appBar = AppBar(
      backgroundColor: AppColors.primaryWhiteColor,
      foregroundColor: AppColors.primaryBlackColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.primaryDeepColor,
        ),
        onPressed: () {
          Get.to(
            () => HomeScreen(),
          );
        },
      ),
      title: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12, right: 10),
            child: Image.asset(
              "assets/images/logo.png",
              scale: 2,
            ),
          ),
          const Text(
            "Minute Clinic",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    // Images
    final _images = [
      "assets/images/hospital.png",
      "assets/images/pharmacy.png",
      "assets/images/lab.png",
    ];

    // Button Names
    final _btnNames = [
      "Hospital",
      "Pharmacy",
      "Lab",
    ];
    // screens
    final _pages = [
      Alllabs(),
      LabDetails(),
      LabSchedules(),
      pharmacyDashboard(),
      pharmacyDashboard(),
      Hospital2DocProfile(),
      Hospital2DocProfile(),
      ScanDocument(),
      OrderProcessed(),
      OrderSubmitted(),
      OrderCompleted(),
      UploadResults(),
      ScanResults(),
      OrderCompleted(),
      Alllabs(),
      
      FindPharmacy(),
      DoctorInformation(),
      Cart(),
      LabChat(),
      LabDirection(),
      DoctorInformation(),
      NearbyHospital(),

    ];

    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      bottomNavigationBar: BottomNavBar(
        backgroundColor: AppColors.primaryDeepColor,
      ),
      floatingActionButton: FloatingAmbulance(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: _appBar,
      body: ListView(
        children: List.generate(
          3,
          (index) => DashBoard(
              image: _images[index],
              btnName: _btnNames[index],
              //  if(index == 0){
              onTap: () {
                if (index == 0) {
                  Get.to(
                    () => const NearbyHospital(),
                    transition: Transition.fadeIn,
                    duration: Duration(seconds: 1),
                  );
                } else if (index == 1) {
                  Get.to(
                    () => const pharmacyDashboard(),
                    transition: Transition.fadeIn,
                    duration: Duration(seconds: 1),
                  );
                } else {
                  Get.to(
                    () => const Alllabs(),
                    transition: Transition.fadeIn,
                    duration: Duration(seconds: 1),
                  );
                }

                // }
              }),
        ),
      ),
    );
  }
}
