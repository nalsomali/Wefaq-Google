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
            backgroundColor: Color.fromARGB(255, 241, 243, 252),
            appBar: AppBar(
              shadowColor: Color.fromARGB(255, 215, 215, 215),
              elevation: 0.8,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
              // Card Which Holds Layout Of ListView Item
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  AssetImage('assets/images/hassan.jpeg'),
                            ),
                            title: Text("data"),
                            // text: TextSpan(
                            //   children: [
                            //     TextSpan(
                            //       text: "Click ",
                            //     ),
                            //     WidgetSpan(
                            //       child: Icon(Icons.add, size: 14),
                            //     ),
                            //     TextSpan(
                            //       text: " to add",
                            //     ),
                            //   ],
                            // ),

                            subtitle: Text(" دكتوراة هندسة برمجيات ",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 38, 70, 138),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              SizedBox(
                height: 130,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 6,
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
                                const Text("     "),
                                Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(202, 204, 21, 21),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  د.عبدالعزيز العريج  ",
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
                                Text(" دكتوراه علم بيانات ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                ElevatedButton(
                                  child: Text('حجز الان'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 72, 119, 194),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("     "),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 6,
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
                                const Text("     "),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black38,
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  م.حسان المالكي  ",
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
                                Text(" مهندس برمجيات ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                ElevatedButton(
                                  child: Text('حجز الان'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 72, 119, 194),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("     "),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 6,
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
                                const Text("     "),
                                Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(202, 204, 21, 21),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  م.امل عيسى  ",
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
                                Text(" خبيرة ذكاء اصطناعي وتعلم الالة ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: SizedBox(),
                                ),
                                ElevatedButton(
                                  child: Text('حجز الان'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 72, 119, 194),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("     "),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 6,
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
                                const Text("     "),
                                Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(202, 204, 21, 21),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  د.ماجد السلمي ",
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
                                Text(" دكتوراة علوم حاسب ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                ElevatedButton(
                                  child: Text('حجز الان'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 72, 119, 194),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("     "),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 6,
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
                                const Text("     "),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black38,
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  د. ناهض الحربي ",
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
                                Text(" خبير اداري وتقني ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                ElevatedButton(
                                  child: Text('حجز الان'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 72, 119, 194),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("     "),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
                child: GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shadowColor: Color.fromARGB(145, 202, 202, 202),
                    elevation: 6,
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
                                const Text("     "),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black38,
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Text(
                                  "  م.لؤي لبني ",
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
                                Text(" ماجستير هندسة برمجيات ",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 38, 70, 138),
                                    )),
                                const Text("     "),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: SizedBox(
                                  width: 100,
                                )),
                                ElevatedButton(
                                  child: Text('حجز الان'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 72, 119, 194),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("     "),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 8,
                              )
                            ],
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
