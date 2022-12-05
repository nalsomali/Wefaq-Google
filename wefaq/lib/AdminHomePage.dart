// ignore_for_file: prefer_const_constructors, unnecessary_new
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
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: AdminCustomNavigationBar(
          currentHomeScreen: 2,
          updatePage: () {},
        ),
        backgroundColor: Color.fromARGB(255, 241, 246, 253),
        body: adminBackgroundHome(
            child: Stack(
          children: <Widget>[
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
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            CategoryCard(
                                title: "طلبات الإنضمام",
                                icon: Icon(
                                  Icons.person_add_alt_outlined,
                                  size: 45,
                                  color: Color.fromARGB(255, 18, 15, 84),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RequestListViewPageProject()));
                                }),
                            CategoryCard(
                                title: "البحوث و المشاريع",
                                icon: Icon(
                                  Icons.lightbulb_outlined,
                                  size: 45,
                                  color: Color.fromARGB(255, 18, 15, 84),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              adminProjectsListViewPage()));
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
  final Icon icon;

  final Function() onTap;

  const CategoryCard({
    required this.icon,
    required this.title,
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
          boxShadow: const [
            BoxShadow(
              offset: Offset(40, 20),
              blurRadius: 30,
              spreadRadius: -23,
              color: Color.fromARGB(218, 161, 158, 162),
            ),
          ],
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
                  icon,
                  Spacer(),
                  Text("$title",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 18, 15, 84),
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
