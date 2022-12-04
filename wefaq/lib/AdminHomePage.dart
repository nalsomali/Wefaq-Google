// ignore_for_file: prefer_const_constructors
import 'package:cool_alert/cool_alert.dart';
import 'package:wefaq/AdminBackground.dart';
import 'package:wefaq/AdminNavBar.dart';
import 'package:wefaq/AdminProjectList.dart';
import 'package:flutter/material.dart';
import 'package:wefaq/AdminRequest.dart';

class adminHomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<adminHomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: AdminCustomNavigationBar(
          currentHomeScreen: 2,
          updatePage: () {},
        ),
        backgroundColor: Color.fromARGB(255, 245, 244, 255),
        body: adminBackgroundHome(
            child: Stack(
          children: <Widget>[
            SizedBox(
              height: 33,
            ),
            Container(
              margin: EdgeInsets.only(left: 310, top: 40),
              child: IconButton(
                  icon: Icon(
                    Icons.logout,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 125),
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.only(top: 290),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 1,
                          childAspectRatio: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 50,
                          children: <Widget>[
                            CategoryCard(
                                title: "المشاريع",
                                imgSrc: "01.png",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              adminProjectsListViewPage()));
                                }),
                            CategoryCard(
                                title: "طلبات الإنضمام",
                                imgSrc: "02.png",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RequestListViewPageProject()));
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )));
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imgSrc;

  final Function() onTap;

  const CategoryCard({
    required this.title,
    required this.imgSrc,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(40, 20),
              blurRadius: 30,
              spreadRadius: -23,
              color: Color.fromARGB(218, 161, 158, 162),
            ),
          ],
          image: new DecorationImage(
            image: new AssetImage("images/$imgSrc"),
          ),
        ),
        child: Material(
          color: Color.fromARGB(0, 167, 22, 22),
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Spacer(),
                  Text("$title",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 61, 132, 163),
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
