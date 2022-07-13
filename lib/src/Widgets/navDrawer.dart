import 'package:ecentialsclone/src/Themes/colors.dart';
import 'package:ecentialsclone/src/Themes/ecentials_icons_icons.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/Ambulance/ambulanceNear.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/minuteClinic.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/Profiles/profileScreen.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/Settings/setting.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/Wallet/useCardWallet.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/Wallet/addCard.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/Wallet/cardTopup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/UserScreens/Home/Wallet/addCardDetails.dart';

class NavDrawer extends StatelessWidget {
  final bool hasShop;
  const NavDrawer({Key? key, this.hasShop = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = 18.0;
    double labelSize = 22.0;
    return Drawer(
      elevation: 100,
      backgroundColor: AppColors.primaryWhiteColor,
      child: ListView(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 170,
            child: Stack(
              children: [
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Image.asset(
                    "assets/images/logo.png",
                    scale: 1.2,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          ListTile(
            onTap: () {
              Get.to(
                () => ProfileScreen(),
                transition: Transition.rightToLeft,
                duration: Duration(
                  seconds: 1,
                ),
              );
              Scaffold.of(context).openEndDrawer();
            },
            leading: Image.asset(
              "assets/images/profileicon.png",
              width: labelSize,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                  fontSize: fontSize, color: AppColors.primaryBlackColor),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset(
              "assets/images/cart.png",
              width: labelSize,
            ),
            title: Text(
              "Cart",
              style: TextStyle(
                  fontSize: fontSize, color: AppColors.primaryBlackColor),
            ),
          ),
          hasShop == true
              ? ListTile(
                  leading: Icon(
                    EcentialsIcons.shop,
                    size: 25,
                    color: AppColors.primaryBlackColor,
                  ),
                  title: Text(
                    "My Shop",
                    style: TextStyle(
                        fontSize: fontSize, color: AppColors.primaryBlackColor),
                  ),
                )
              : Container(),
          ListTile(
            onTap: () {
              Get.to(
                () => MinuteClinic(),
                transition: Transition.rightToLeft,
                duration: Duration(
                  seconds: 1,
                ),
              );
              Scaffold.of(context).openEndDrawer();
            },
            leading: Image.asset(
              "assets/images/hospitalicon.png",
              width: labelSize,
            ),
            title: Text(
              "Minute Clinic",
              style: TextStyle(
                  fontSize: fontSize, color: AppColors.primaryBlackColor),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(
                () => AmbulanceNear(),
                transition: Transition.rightToLeft,
                duration: Duration(
                  seconds: 1,
                ),
              );
              Scaffold.of(context).openEndDrawer();
            },
            leading: Image.asset(
              "assets/images/ambulanceicon.png",
              width: labelSize,
            ),
            title: Text(
              "Ambulance",
              style: TextStyle(
                fontSize: fontSize,
                color: AppColors.primaryBlackColor,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => Settings());
              Scaffold.of(context).openEndDrawer();
            },
            leading: Image.asset(
              "assets/images/settings.png",
              width: labelSize,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                  fontSize: fontSize, color: AppColors.primaryBlackColor),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => AddCardDetails());
              Scaffold.of(context).openEndDrawer();
            },
            leading: Image.asset(
              "assets/images/ecentialcard.png",
              width: labelSize,
            ),
            title: Text(
              "Ecentials Wallet",
              style: TextStyle(
                  fontSize: fontSize, color: AppColors.primaryBlackColor),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: SizedBox(
              width: labelSize,
              height: labelSize,
              child: Center(
                child: Image.asset(
                  "assets/images/circlearrow.png",
                  width: labelSize,
                ),
              ),
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                  fontSize: fontSize, color: AppColors.primaryRedColor),
            ),
          ),
        ],
      ),
    );
  }
}
