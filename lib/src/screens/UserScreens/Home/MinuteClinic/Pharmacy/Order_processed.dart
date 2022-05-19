
// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:ecentialsclone/src/Themes/colors.dart';
import 'package:ecentialsclone/src/Themes/ecentials_icons_icons.dart';
import 'package:ecentialsclone/src/Widgets/bottomNavBar.dart';
import 'package:ecentialsclone/src/Widgets/button.dart';
import 'package:ecentialsclone/src/Widgets/drugCard.dart';
import 'package:ecentialsclone/src/Widgets/floatingAmbulance.dart';
import 'package:ecentialsclone/src/Widgets/outlinedButton.dart';
import 'package:ecentialsclone/src/Widgets/schedulesCard.dart';
import 'package:ecentialsclone/src/Widgets/searchForh.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class Order_processed extends StatefulWidget {
  const Order_processed({
    Key? key,
  }) : super(key: key);

  @override
  State<Order_processed> createState() => _Order_processedState();
}

class _Order_processedState extends State<Order_processed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                margin: const EdgeInsets.only(
                  top: 196.9,
                  left: 57,
                  right: 57,
                ),
                child: Image.asset("assets/images/order_processed.png"),
              ),
              Container(
                  height: 22,
                  margin: const EdgeInsets.only(
                    left: 131.5,
                    right: 133.5,
                  ),
                  child: Text("Order processed!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ))),

                       Container(
                  height: 16,
                  margin: const EdgeInsets.only(
                    top: 10,
                    left: 104.5,
                    right: 104.5,
                  ),
                  child: Text("Proceed to complete your order",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Montserrat",
                      ))),


                      Container(
                    height: 60,
                    width: 338,
                   margin: const EdgeInsets.only(top: 68.99, left: 43, right: 33),
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 240, 244),
                  borderRadius: BorderRadius.circular(10),
                    ),
                child: Button(
                  text: "Continue ",
                  height: 17,
                  width: 65,
                  style: TextStyle(
                      color: AppColors.primaryWhiteColor,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
              ),

                     
            ],
          ),
        ),
      ),
    );
  }
}