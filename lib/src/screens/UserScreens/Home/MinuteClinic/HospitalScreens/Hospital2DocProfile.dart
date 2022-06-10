import 'package:ecentialsclone/src/Themes/colors.dart';
import 'package:ecentialsclone/src/Widgets/doctorCard.dart';
import 'package:ecentialsclone/src/Widgets/topDoctor.dart';
import 'package:ecentialsclone/src/screens/UserScreens/Home/MinuteClinic/HospitalScreens/Hospital3Schedule.dart';
import 'package:flutter/material.dart';

class DocotorInfo extends StatefulWidget {
  const DocotorInfo({Key? key}) : super(key: key);

  @override
  State<DocotorInfo> createState() => _DocotorInfoState();
}

class _DocotorInfoState extends State<DocotorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  Positioned(
                    top: 100,
                    child: Image(
                      image: AssetImage("assets/images/doctor_hospital.png"),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    child: doctorCard(
                        fname: "Prince",
                        lname: "Berth",
                        role: "Heart Surgeon",
                        hospital: "National hospital"),
                  ),
                  Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Center(
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin habitant donec habitant quis arcu aliquet non turpis. "),
                  ),
                  Text("Availability"),
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          // backgroundColor: const Color(0xFF033A64),
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 18),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          print("hello");
                        },
                        child: Column(
                          children: [Text("Mon"), Text("2")],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          // backgroundColor: const Color(0xFF033A64),
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 18),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          print("hello");
                        },
                        child: Column(
                          children: [Text("Tue"), Text("3")],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          backgroundColor: const Color(0xFF033A64),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 18),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          print("hello");
                        },
                        child: Column(
                          children: [Text("Wed"), Text("4")],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          // backgroundColor: const Color(0xFF033A64),
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 18),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          print("hello");
                        },
                        child: Column(
                          children: [Text("Thur"), Text("5")],
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          // backgroundColor: const Color(0xFF033A64),
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 18),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          print("hello");
                        },
                        child: Column(
                          children: [Text("Fri"), Text("6")],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "(200)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: const Color(0xFFCB3F04)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      children: [
                        TopDoctor(
                            image: "assets/images/doctor.png",
                            docName: "Esther Essien",
                            specialization: "Eye specialist",
                            experience: 6),
                        TopDoctor(
                            image: "assets/images/doctor.png",
                            docName: "Esther Essien",
                            specialization: "Eye specialist",
                            experience: 6),
                      ],
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      backgroundColor: const Color(0xFF033A64),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 18),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print("booked");
<<<<<<< HEAD
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Schedule()));
=======
>>>>>>> 20730b0bef27f66f56efbab817136cb218d8bf48
                    },
                    child: Text("Book Appointment"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
