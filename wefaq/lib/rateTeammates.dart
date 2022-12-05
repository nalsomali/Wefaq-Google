import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wefaq/HomePage.dart';
import 'package:wefaq/UserLogin.dart';
import 'package:wefaq/groupchat.dart';
import 'package:wefaq/viewProfileTeamMembers.dart';

class rateTeammates extends StatefulWidget {
  String projectName;
  rateTeammates({
    required this.projectName,
  });
  @override
  _rateTeammates createState() => _rateTeammates(projectName);
}

class _rateTeammates extends State<rateTeammates> {
  String projectName;
  _rateTeammates(this.projectName);

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
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 85, 85, 85),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          children: [
            //Image.network('assets/images/logo.png', height: 70),
            SizedBox(width: 5),
            Text(
              "قيّم زملائك",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
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
              backgroundImage: AssetImage('assets/images/hassan.jpeg'),
            ),
            title: Text("  الهنوف العواد ",
                style: const TextStyle(
                  fontSize: 19,
                  color: Color.fromARGB(255, 14, 10, 102),
                  fontWeight: FontWeight.w700,
                )),
            subtitle: Text(" مبرمج ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 38, 70, 138),
                )),
            trailing: Icon(Icons.arrow_forward_ios),
            isThreeLine: true,
          ),
        ),
      ]),
    );
  }
}
