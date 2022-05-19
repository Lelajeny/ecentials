// ignore_for_file: unused_import, file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

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

class Order_completed extends StatefulWidget {
  const Order_completed({
    Key? key,
  }) : super(key: key);

  @override
  State<Order_completed> createState() => _Order_completedState();
}

class _Order_completedState extends State<Order_completed> {
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
                  height: 300.07,
                  width: 300,
                  margin: const EdgeInsets.only(
                    top: 86.2,
                    left: 56.5,
                    right: 57.5,
                  ),
                  child: Image.asset("assets/images/order_complete.png")),
              Container(
                  height: 22,
                  margin: const EdgeInsets.only(
                    top: 10.25,
                    left: 131,
                    right: 129,
                  ),
                  child: Text("Order completed!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ))),
              Container(
                  height: 16,
                  width: 133,
                  margin: const EdgeInsets.only(
                    top: 10,
                    left: 140.5,
                    right: 140.5,
                  ),
                  child: Text("Order number:#987",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Montserrat",
                      ))),
              Row(
                children: [
                  Container(
                    height: 20,
                    // width: 116,
                    margin: const EdgeInsets.only(
                      top: 42.28,
                      left: 42,
                    ),
                    child: Text("Ordered Items",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF424347),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 16,
                    //  width: 116,
                    margin: const EdgeInsets.only(
                      top: 43.28,
                      left: 43,
                    ),
                    child: Text("Order",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF3E3E3E),
                        )),
                  ),
                  Container(
                    height: 16,
                    margin: const EdgeInsets.only(
                      top: 43.28,
                      left: 245,
                    ),
                    child: Text("\$28.00",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF3E3E3E),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 16,
                    //  width: 116,
                    margin: const EdgeInsets.only(
                      top: 7,
                      left: 43,
                    ),
                    child: Text("Delivery",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF3E3E3E),
                        )),
                  ),
                  Container(
                    height: 16,
                    margin: const EdgeInsets.only(
                      top: 7,
                      left: 240,
                    ),
                    child: Text("\$7.20",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF3E3E3E),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 16,
                    margin: const EdgeInsets.only(
                      top: 7,
                      left: 43,
                    ),
                    child: Text("Summary",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF424347),
                        )),
                  ),
                  Container(
                    height: 16,
                    margin: const EdgeInsets.only(
                      top: 7,
                      left: 197,
                    ),
                    child: Text("\$35.20",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          color: const Color(0xFF424347),
                        )),
                  )
                ],
              ),
              Container(
                height: 60,
                width: 338,
                margin: const EdgeInsets.only(top: 61.72, left: 35, right: 41),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 240, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Button(
                  text: "Continue Shopping",
                  height: 18,
                  width: 99,
                  style: TextStyle(
                      color: AppColors.primaryWhiteColor,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 66, top: 12, right: 41),
                  child: Row(children: [
                    ButtonOutlined(
                      text: "Track Delivery",
                      style: TextStyle(color: const Color(0xFF033A64)),
                      color: const Color(0xFF033A64),
                      width: 338,
                      height: 60,
                      radius: 10,
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}