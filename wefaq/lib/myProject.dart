import 'package:flutter/material.dart';

import 'navBar.dart';
import 'profileuser.dart';

// Main Stateful Widget Start
class userProjects extends StatefulWidget {
  ListViewPageState createState() => ListViewPageState();
}

class ListViewPageState extends State<userProjects> {
  final TextEditingController _JoiningASController = TextEditingController();
  final TextEditingController _ParticipantNoteController =
      TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  // Title list
  List<String> nameList = [];

  List<String> joiningAs = [];

  String? Email;

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width

    return Column(
      children: [
        Expanded(
            child: Scaffold(
                backgroundColor: Colors.white,
                bottomNavigationBar: CustomNavigationBar(
                  currentHomeScreen: 5,
                  updatePage: () {},
                ),
                appBar: AppBar(
                  title: Text(
                    'المشاركات',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  automaticallyImplyLeading: false,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  actions: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
                // Main List View With Builder
                body: ListView(children: [
                  SizedBox(
                    height: 100,
                    child: GestureDetector(
                        child: Card(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          //shadowColor: Color.fromARGB(255, 255, 255, 255),
                          //  elevation: 7,

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
                                    Row(children: <Widget>[
                                      Text(
                                        "      مشروع وفاق ",
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 14, 10, 102),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: 240,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      const Text("       "),
                                      const Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 14, 10, 102),
                                      ),
                                      Text("مبرمج ",
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color:
                                                Color.fromARGB(255, 14, 72, 97),
                                          )),
                                      Expanded(
                                          child: SizedBox(
                                        width: 100,
                                      )),
                                      IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          onPressed: () {}),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {}),
                  )
                ])

                // itemCount:_textEditingController!.text.isNotEmpty? nameListsearch.length  : nameListsearch.length,
                )),
      ],
    );
  }
}
