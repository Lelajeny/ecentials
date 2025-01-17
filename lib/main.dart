import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecentialsclone/src/screens/AuthScreens/login.dart';
import 'package:ecentialsclone/src/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preference = await SharedPreferences.getInstance();
  final showLogin = preference.getBool('showLogin') ?? false;
  runApp(
    MyApp(showLogin: showLogin),
  );
}

class MyApp extends StatelessWidget {
  final bool showLogin;
  const MyApp({Key? key, required this.showLogin}) : super(key: key);

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
        nextScreen: showLogin ? const Login() : const OnboardingScreen(),
      ),
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
    );
  }
}
