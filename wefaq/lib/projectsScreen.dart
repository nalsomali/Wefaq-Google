import 'dart:convert';
import 'dart:math';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wefaq/ProjectsTapScreen.dart';
import 'package:wefaq/project_detail_screen.dart';
import 'package:http/http.dart' as http;

// Main Stateful Widget Start
class ProjectsListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

final TextEditingController _JoiningASController = TextEditingController();
final TextEditingController _ParticipantNoteController =
    TextEditingController();
TextEditingController? _searchEditingController = TextEditingController();

class _ListViewPageState extends State<ProjectsListViewPage> {
  @override
  void initState() {
    super.initState();
  }

  Position? _currentPosition;
  var lat;
  var lng;

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width

    return Column(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            floatingActionButton: PopupMenuButton(
              tooltip: "Filter by",
              icon: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 219, 219, 219),
                child: Icon(
                  Icons.filter_list,
                  color: Color.fromARGB(255, 14, 10, 102),
                  size: 40,
                ),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: ListTile(
                    title: Text(
                      'مشروع تقني',
                      style: TextStyle(
                        color: Color.fromARGB(255, 14, 10, 102),
                      ),
                    ),
                    leading: Icon(
                      Icons.code,
                      color: Color.fromARGB(255, 209, 208, 208),
                    ),
                    onTap: () {},
                    selectedTileColor: Color.fromARGB(255, 252, 243, 243),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.manage_search_sharp,
                        color: Color.fromARGB(255, 209, 208, 208)),
                    title: Text(
                      'بحث علمي',
                      style: TextStyle(
                        color: Color.fromARGB(255, 14, 10, 102),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            // Main List View With Builder
            body: ListView(children: [
              //itemCount: tokens.length,

              // Card Which Holds Layout Of ListView Item
              SizedBox(
                height: 100,
                child: GestureDetector(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 11),
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
                                Row(children: <Widget>[
                                  Text(
                                    "  دراسة اثار الاضطراب الاجتماعي ",
                                    style: const TextStyle(
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
                                    "١١-١٢-٢٠٢٢",
                                    style: const TextStyle(
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
                                      color: Color.fromARGB(255, 14, 10, 102)),
                                  const Text("     "),
                                  Text("كلية الاداب",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 38, 70, 138),
                                      )),
                                  Expanded(
                                      child: SizedBox(
                                    width: 100,
                                  )),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color:
                                            Color.fromARGB(255, 170, 169, 179),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    projectDetailScreen()));
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
                              builder: (context) => projectDetailScreen()));
                    }),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 100,
                child: GestureDetector(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 11),
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
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(children: <Widget>[
                                  Text(
                                    "  مشروع عوالم",
                                    style: const TextStyle(
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
                                    "٨-٨-٢٠٢٢ ",
                                    style: const TextStyle(
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
                                      color: Color.fromARGB(255, 14, 10, 102)),
                                  const Text("     "),
                                  Text("كلية علوم الحاسب و المعلومات ",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 38, 70, 138),
                                      )),
                                  Expanded(
                                      child: SizedBox(
                                    width: 100,
                                  )),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color:
                                            Color.fromARGB(255, 170, 169, 179),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    projectDetailScreen()));
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
                              builder: (context) => projectDetailScreen()));
                    }),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 100,
                child: GestureDetector(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 11),
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
                                Row(children: <Widget>[
                                  Text(
                                    " دراسة مدى انتشار بكتيريا السالمونيلا ",
                                    style: const TextStyle(
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
                                    style: const TextStyle(
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
                                      color: Color.fromARGB(255, 14, 10, 102)),
                                  const Text("     "),
                                  Text("كلية العلوم الطبية التطبيقية",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 38, 70, 138),
                                      )),
                                  Expanded(
                                      child: SizedBox(
                                    width: 100,
                                  )),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color:
                                            Color.fromARGB(255, 170, 169, 179),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    projectDetailScreen()));
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
                              builder: (context) => projectDetailScreen()));
                    }),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 100,
                child: GestureDetector(
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 11),
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
                                Row(children: <Widget>[
                                  Text(
                                    " مشروع وفاق ",
                                    style: const TextStyle(
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
                                    style: const TextStyle(
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
                                      color: Color.fromARGB(255, 14, 10, 102)),
                                  const Text("     "),
                                  Text("كلية علوم الحاسب و المعلومات",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 38, 70, 138),
                                      )),
                                  Expanded(
                                      child: SizedBox(
                                    width: 100,
                                  )),
                                  IconButton(
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color:
                                            Color.fromARGB(255, 170, 169, 179),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    projectDetailScreen()));
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
                              builder: (context) => projectDetailScreen()));
                    }),
              ),
              // itemCount:_textEditingController!.text.isNotEmpty? nameListsearch.length  : nameListsearch.length,
            ]),
          ),
        ),
      ],
    );
  }
}
