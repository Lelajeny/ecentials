// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:ecentialsclone/src/Themes/colors.dart';
import 'package:ecentialsclone/src/Themes/ecentials_icons_icons.dart';
import 'package:ecentialsclone/src/Widgets/outlinedButton.dart';
import 'package:ecentialsclone/src/Widgets/prominentDoctors.dart';
import 'package:ecentialsclone/src/Widgets/topDoctor.dart';
import 'package:flutter/material.dart';

class labScreen extends StatefulWidget {
  const labScreen({Key? key}) : super(key: key);

  @override
  State<labScreen> createState() => _labScreenState();
}

class _labScreenState extends State<labScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            Column(
              children: [
                Image(
                  image: AssetImage("assets/images/hospitallabs.png"),
                ),
                SizedBox(
                  height: 29,
                  width: 10,
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(right: 67, bottom: 10),
                  child: Text(
                    "AnuTech National Hospital",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "3.5km away",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      
                          Text(
                            "Ratings: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        
                      
                      Icon(
                        Icons.star,
                        size: 15,
                        color: AppColors.primaryOrangeColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: AppColors.primaryOrangeColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: AppColors.primaryOrangeColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: AppColors.primaryOrangeColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: AppColors.primaryOrangeColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 2, 0, 2),
                  child: Row(
                    children: [
                      Text(
                        "Address:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "  Accra,Ghana",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 2, 0, 2),
                  child: Row(
                    children: [
                      Text(
                        "Hours:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "24H",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 56),
                        child: Text(
                          "Phone:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Text(
                        "+233 xxxxxxxxxxxxx",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          top: 4,
                          bottom: 4,
                          left: 14,
                          right: 14,
                        ),
                        backgroundColor: const Color(0xFF033A64),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 12),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("booked");
                      },
                      child: Row(children: [
                        Icon(Icons.message_outlined),
                        Text(" Chat")
                      ]),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          top: 4,
                          bottom: 4,
                          left: 14,
                          right: 14,
                        ),
                        backgroundColor: const Color(0xFF033A64),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 18),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("booked");
                      },
                      child: Row(children: [
                        Icon(Icons.phone_in_talk),
                        Text("  Call"),
                      ]),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          top: 4,
                          bottom: 4,
                          left: 14,
                          right: 14,
                        ),
                        backgroundColor: const Color(0xFF033A64),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 18),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("booked");
                      },
                      child: Row(children: [
                        Icon(Icons.directions),
                        Text("Direction"),
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    "Prominent doctors",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    children: [
                      ProminentDoctors(
                          image: "assets/images/doctor1.png",
                          docName: "Clara",
                          specialization: "Neuro Surgeon"),
                      ProminentDoctors(
                          image: "assets/images/doctor2.png",
                          docName: "Clara",
                          specialization: "Cardio Surgeon"),
                      ProminentDoctors(
                          image: "assets/images/doctor.png",
                          docName: "Clara",
                          specialization: "Neuro Surgeon"),
                      ProminentDoctors(
                          image: "assets/images/doctor.png",
                          docName: "Clara",
                          specialization: "Computer Surgeon")
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "HealthCare Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 29,
                      width: 150,
                    ),
                    IconButton(
                      onPressed: () {
                        print("clicked");
                      },
                      icon: Icon(
                        Icons.compare_arrows_sharp,
                        color: const Color(0xFF033A64),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonOutlined(
                      text: "Blood Test",
                      style: TextStyle(color: const Color(0xFF033A64)),
                      color: const Color(0xFF033A64),
                      width: 100,
                      height: 40,
                      radius: 8,
                    ),
                    ButtonOutlined(
                      text: "Urine Test",
                      style: TextStyle(color: const Color(0xFF033A64)),
                      color: const Color(0xFF033A64),
                      width: 100,
                      height: 40,
                      radius: 8,
                    ),
                    ButtonOutlined(
                      text: "DNA test",
                      style: TextStyle(color: const Color(0xFF033A64)),
                      color: const Color(0xFF033A64),
                      width: 100,
                      height: 40,
                      radius: 8,
                    ),
                  ],
                ),
                SizedBox(
                  child: Card(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                            left: 80, right: 80, top: 15, bottom: 15),
                        backgroundColor: const Color(0xFF033A64),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 15),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("booked");
                      },
                      child: Text("Book Session"),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}