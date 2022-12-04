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
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => adminHomeScreen()));
                  }),
              backgroundColor: Color.fromARGB(255, 145, 124, 178),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {}),
              ],
              title: Text('المشاريع',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
            ),

            //Main List View With Builder
            body: Scrollbar(
              thumbVisibility: true,
              child: ListView.builder(
                //itemCount: tokens.length,

                itemBuilder: (context, index) {
                  // Card Which Holds Layout Of ListView Item

                  return SizedBox(
                    height: 100,
                    child: GestureDetector(
                        child: Card(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Row(children: const <Widget>[
                                      Text(
                                        "      تطوير موقع الكتروني ",
                                        style: TextStyle(
                                          fontSize: 19,
                                          color:
                                              Color.fromARGB(212, 82, 10, 111),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: 240,
                                        ),
                                      ),
                                      Text(
                                        "١٢/٢/١٤٤٣",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 170, 169, 179),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      const Text("     "),
                                      const Icon(Icons.location_pin,
                                          color:
                                              Color.fromARGB(173, 64, 7, 87)),
                                      Text("جامعةالملك سعود",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 34, 94, 120),
                                          )),
                                      Expanded(
                                          child: SizedBox(
                                        width: 100,
                                      )),
                                      IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios,
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
                  );
                },
                itemCount: 3,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
