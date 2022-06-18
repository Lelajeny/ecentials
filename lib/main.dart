import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:ecentialsclone/src/screens/UserScreens/Store/ecentialsWallet.dart';
import 'package:ecentialsclone/src/screens/UserScreens/main_screen.dart';
import 'package:ecentialsclone/src/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/screens/UserScreens/Home/MinuteClinic/HospitalScreens/ambulanceScreens/mapScreens/ambulance12.dart';
import 'src/screens/UserScreens/Home/MinuteClinic/HospitalScreens/ambulanceScreens/mapScreens/ambulance4.dart';
import 'src/screens/test_widgets_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preference = await SharedPreferences.getInstance();
  final showLogin = preference.getBool('showLogin') ?? false;
  final showSignup = preference.getBool('showSignup') ?? false;

  runApp(
    MyApp(showLogin: true, showSignup: false),
  );
}

class MyApp extends StatelessWidget {
  final bool showLogin;
  final bool showSignup;
  const MyApp({Key? key, required this.showLogin, required this.showSignup})
      : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: "assets/images/logo.png",
        centered: true,
        duration: 2000,
        splashIconSize: 500,
        nextScreen: showLogin ? const MainScreen() : const OnboardingScreen(),
      ),
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
    );
  }
}
