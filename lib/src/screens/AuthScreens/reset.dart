import 'package:ecentialsclone/src/Widgets/button.dart';
import 'package:ecentialsclone/src/screens/AuthScreens/emailSuccess.dart';
import 'package:ecentialsclone/src/screens/AuthScreens/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import '../../Themes/colors.dart';
import '../UserScreens/main_screen.dart';

class PasswordReset extends StatefulWidget {
  bool isVisible;
  PasswordReset({Key? key, this.isVisible = false}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Logo  and PasswordReset text
    final _logotext = Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/logo.png",
          scale: 1.5,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
    // Email Input text
    final _formkey = GlobalKey<FormState>();
    final _emailController = TextEditingController();

    // Password Input text
    final _password = Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "New Password",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Neumorphic(
          padding: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            depth: -10,
            lightSource: LightSource.top,
            color: Colors.grey.withOpacity(.10),
          ),
          child: TextFormField(
            obscuringCharacter: '*',
            obscureText: !widget.isVisible,
            style: const TextStyle(fontSize: 20),
            cursorColor: AppColors.primaryDeepColor,
            controller: _passwordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    widget.isVisible = !widget.isVisible;
                  });
                },
                icon: Icon(
                  widget.isVisible == true
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.primaryBlackColor.withOpacity(
                    .50,
                  ),
                ),
              ),
              hintText: "********",
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        )
      ],
    );
    // Confirm Password Input text

    final _confirmPassword = Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Confirm Password",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Neumorphic(
          padding: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            depth: -10,
            lightSource: LightSource.top,
            color: Colors.grey.withOpacity(.10),
          ),
          child: TextFormField(
            obscuringCharacter: '*',
            obscureText: !widget.isVisible,
            style: TextStyle(fontSize: 20),
            cursorColor: AppColors.primaryDeepColor,
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    widget.isVisible = !widget.isVisible;
                  });
                },
                icon: Icon(
                  widget.isVisible == true
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.primaryBlackColor.withOpacity(
                    .50,
                  ),
                ),
              ),
              hintText: "********",
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        )
      ],
    );

// Sign in Button
    final _signin = GestureDetector(
      onTap: () {
        Get.to(
          () => MainScreen(),
          transition: Transition.fadeIn,
          duration: const Duration(seconds: 1),
        );
      },
      child: Button(
        onTap: () {
          Get.to(() => EmailSuccess());
        },
        text: "Save",
        style: TextStyle(color: AppColors.primaryWhiteColor, fontSize: 20),
      ),
    );

    // App Bar
    final _appBar = AppBar(
      backgroundColor: AppColors.primaryWhiteColor,
      foregroundColor: AppColors.primaryBlackColor,
      elevation: 0,
      title: Text(
        "Password Reset",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      appBar: _appBar,
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 60,
            ),
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _logotext,
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            _password,
                            const SizedBox(
                              height: 20,
                            ),
                            _confirmPassword,
                            const SizedBox(
                              height: 40,
                            ),
                            _signin,
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
