import 'package:ecentialsclone/src/Themes/ecentials_icons_icons.dart';
import 'package:ecentialsclone/src/Widgets/bottomNavBar.dart';
import 'package:ecentialsclone/src/Widgets/button.dart';
import 'package:ecentialsclone/src/Widgets/floatingAmbulance.dart';
import 'package:flutter/material.dart';

class createStore extends StatelessWidget {
  const createStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [

          IconButton(
            onPressed: () {
              print("object");

            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          SizedBox(
            width: 250,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/profilePic.png"),
          ),
        ],
      ), backgroundColor: Colors.transparent,),

      floatingActionButton: FloatingAmbulance(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [SizedBox(height: 80,),Image.asset("assets/images/create_store.png",height: 128,width: 128,),Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text("You Dont Have a Store",style: TextStyle(fontSize: 14),),
        ),SizedBox(height: 56,),Center(child: Button(text: "Create Store",width: 302,radius: 20,style: TextStyle(color: Colors.white,fontSize: 15),),),],),);

  }
}
