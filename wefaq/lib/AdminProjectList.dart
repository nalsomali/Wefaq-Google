// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:wefaq/AdminHomePage.dart';
import 'package:wefaq/AdminNavBar.dart';
import 'package:wefaq/AdminProjectDetails.dart';

// Main Stateful Widget Start

class adminProjectsListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<adminProjectsListViewPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width

    return Column(
      children: [
        Expanded(
          child: Scaffold(
              bottomNavigationBar: AdminCustomNavigationBar(
                currentHomeScreen: 2,
                updatePage: () {},
              ),
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 14, 10, 102),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => adminHomeScreen()));
                      }),
                ],
                title: Text('المشاريع',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 14, 10, 102),
                    )),
              ),

              //Main List View With Builder
              body: ListView(children: [
                // Card Which Holds Layout Of ListView Item
                SizedBox(
                  height: 100,
                  child: GestureDetector(
                      child: Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shadowColor: Color.fromARGB(145, 202, 202, 202),
                        elevation: 8,
                        //shadowColor: Color.fromARGB(255, 255, 255, 255),
                        //  elevation: 7,

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Row(children: const <Widget>[
                                    Text(
                                      " مشروع تطوير الويب ",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: 240,
                                      ),
                                    ),
                                    Text(
                                      "٢١-٤-٢٠٢٢",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    const Icon(Icons.location_pin,
                                        color:
                                            Color.fromARGB(255, 14, 10, 102)),
                                    const Text("     "),
                                    Text("كلية علوم الحاسب و المعلومات",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 38, 70, 138),
                                        )),
                                    Expanded(
                                        child: SizedBox(
                                      width: 100,
                                    )),
                                    IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color.fromARGB(
                                              255, 170, 169, 179),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      adminprojectDetailScreen()));
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    adminprojectDetailScreen()));
                      }),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 100,
                  child: GestureDetector(
                      child: Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shadowColor: Color.fromARGB(145, 202, 202, 202),
                        elevation:
                            8, //shadowColor: Color.fromARGB(255, 255, 255, 255),
                        //  elevation: 7,

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Row(children: const <Widget>[
                                    Text(
                                      " دراسة مدى انتشار بكتيريا السالمونيلا ",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: 240,
                                      ),
                                    ),
                                    Text(
                                      "١١-٧-٢٠٢٢",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    const Icon(Icons.location_pin,
                                        color:
                                            Color.fromARGB(255, 14, 10, 102)),
                                    const Text("     "),
                                    Text("كلية العلوم الطبية التطبيقية",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 38, 70, 138),
                                        )),
                                    Expanded(
                                        child: SizedBox(
                                      width: 100,
                                    )),
                                    IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color.fromARGB(
                                              255, 170, 169, 179),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      adminprojectDetailScreen()));
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    adminprojectDetailScreen()));
                      }),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 100,
                  child: GestureDetector(
                      child: Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shadowColor: Color.fromARGB(145, 202, 202, 202),
                        elevation: 8,
                        //shadowColor: Color.fromARGB(255, 255, 255, 255),
                        //  elevation: 7,

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Row(children: const <Widget>[
                                    Text(
                                      " مشروع وفاق ",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: 240,
                                      ),
                                    ),
                                    Text(
                                      "٢١-٤-٢٠٢٢",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    const Icon(Icons.location_pin,
                                        color:
                                            Color.fromARGB(255, 14, 10, 102)),
                                    const Text("     "),
                                    Text("كلية علوم الحاسب و المعلومات",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 38, 70, 138),
                                        )),
                                    Expanded(
                                        child: SizedBox(
                                      width: 100,
                                    )),
                                    IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color.fromARGB(
                                              255, 170, 169, 179),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      adminprojectDetailScreen()));
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    adminprojectDetailScreen()));
                      }),
                ),
              ])),
        ),
      ],
    );
  }
}
