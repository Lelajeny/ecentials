import 'package:ecentialsclone/src/Themes/colors.dart';
import 'package:ecentialsclone/src/Widgets/addSchoolButton.dart';
import 'package:ecentialsclone/src/Widgets/bottomNavBar.dart';
import 'package:ecentialsclone/src/Widgets/floatingAmbulance.dart';
import 'package:flutter/material.dart';

class EducationalInfo extends StatefulWidget {
  const EducationalInfo({Key? key}) : super(key: key);

  @override
  State<EducationalInfo> createState() => _EducationalInfoState();
}

class _EducationalInfoState extends State<EducationalInfo> {
  openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            "Add Educational Inlformation",
          ),
          content: Container(
            height: 150,
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("School Name"),
                  border: OutlineInputBorder(),
                ),
              )
            ]),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: const FloatingAmbulance(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhiteColor,
        foregroundColor: AppColors.primaryBlackColor,
        elevation: 0,
        title: const Text("Educational Information"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 15,
              child: AddSchoolButton(
                onTap: () {
                  openDialog();
                },
              ),
            ),
            // Text("Hello"),
          ],
        ),
      ),
    );
  }
}