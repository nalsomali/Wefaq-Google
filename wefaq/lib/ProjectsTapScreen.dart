import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:wefaq/Homepage.dart';
import 'package:wefaq/navBar.dart';
import 'package:wefaq/mapView.dart';
import 'package:wefaq/projectsScreen.dart';

// Main Stateful Widget Start
class ProjectsTabs extends StatefulWidget {
  @override
  _ListViewTabsState createState() => _ListViewTabsState();
}

class _ListViewTabsState extends State<ProjectsTabs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'البحوث و المشاريع',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 242, 241, 241),
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 14, 10, 102),
              indicatorWeight: 6,
              labelStyle: TextStyle(
                  fontSize: 18.0, fontFamily: 'Family Name'), //For Selected tab
              unselectedLabelStyle: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Family Name'), //For Un-selected Tabs
              tabs: [
                Tab(text: 'القائمة'),
                Tab(
                  text: 'الخريطة',
                ),
              ],
              labelColor: Color.fromARGB(255, 14, 10, 102),
            ),
          ),
          body: TabBarView(children: [ProjectsListViewPage(), MapSample()]),
          bottomNavigationBar: CustomNavigationBar(
            currentHomeScreen: 1,
            updatePage: () {},
          ),
        ));
  }
}
