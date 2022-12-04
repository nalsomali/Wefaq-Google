import 'package:flutter/material.dart';
import 'package:wefaq/HomePage.dart';
import 'package:wefaq/navBar.dart';

class SessionScreen extends StatefulWidget {
  @override
  SessionScreensState createState() => SessionScreensState();
}

class SessionScreensState extends State<SessionScreen> {
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
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 249, 248, 248),
              actions: <Widget>[],
              title: Text(' جلسات استشارية ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(206, 0, 0, 0),
                  )),
            ),
            bottomNavigationBar: CustomNavigationBar(
              currentHomeScreen: 0,
              updatePage: () {},
            ),
            // Main List View With Builder
            body: ListView(children: [
              //itemCount: tokens.length,

              // Card Which Holds Layout Of ListView Item
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
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(children: <Widget>[
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  د.عبير النجار ",
                                  style: const TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 14, 10, 102),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text("     "),
                              ]),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                Text(" دكتوراة هندسة برمجيات ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(children: <Widget>[
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  أ.محمد الموسى  ",
                                  style: const TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 14, 10, 102),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text("     "),
                              ]),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                Text(" ماجستير علم بيانات ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(children: <Widget>[
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  أ.حسان المالكي ",
                                  style: const TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 14, 10, 102),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text("     "),
                              ]),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                Text("  ماجستير ذكاء اصطناعي  ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(children: <Widget>[
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  د.فواز النجار ",
                                  style: const TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 14, 10, 102),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text("     "),
                              ]),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                Text(" دكتوراة رياضيات  ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // itemCount:_textEditingController!.text.isNotEmpty? nameListsearch.length  : nameListsearch.length,
            ]),
          ),
        ),
      ],
    );
  }
}
