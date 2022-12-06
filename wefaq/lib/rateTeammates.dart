import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:wefaq/Groupchat.dart';
import 'package:wefaq/HomePage.dart';
import 'package:wefaq/UserLogin.dart';
import 'package:wefaq/viewProfileTeamMembers.dart';

import 'navBar.dart';

class rateTeammates extends StatefulWidget {
  @override
  _rateTeammates createState() => _rateTeammates();
}

class _rateTeammates extends State<rateTeammates> {
  var usersNames = [];
  var usersEmails = [];

  var userWhoRated = [];
  var ratings = [];
  var photos = [];
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: CustomNavigationBar(
        currentHomeScreen: 4,
        updatePage: () {},
      ),
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 48, 66, 109),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chatRoomGoogle()));
              }),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 242, 241, 241),
          title: Text(
            "قيّم زملائك",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: ListView(children: [
        // Card Which Holds Layout Of ListView Item
        SizedBox(
          height: 10,
        ),

        Card(
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: const Color.fromARGB(255, 255, 255, 255),
          shadowColor: Color.fromARGB(145, 202, 202, 202),
          elevation: 8,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/wefaq-5f47b.appspot.com/o/images%2Fprivate%2Fvar%2Fmobile%2FContainers%2FData%2FApplication%2FC908E9E7-E3D6-48F8-BD9C-5D0BEDCD799D%2Ftmp%2Fimage_picker_8D66EA46-E0D8-49D0-9ABC-F60A3E6DEF4B-720-00000072D1339A8C.png?alt=media&token=01f9fc26-3478-4833-8532-9ed16012a716'),
            ),
            title: Text("  الهنوف العواد ",
                style: const TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w700,
                )),
            subtitle: Text(" مبرمج ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => viewProfileTeamMembers()));
            },
            isThreeLine: true,
          ),
        ),
      ]),
    );
  }
}
