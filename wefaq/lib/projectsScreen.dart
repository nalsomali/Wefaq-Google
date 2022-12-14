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

  // setDistance() {
  //   for (var i = 0; i < latList.length; i++) {
  //     setState(() {
  //       FirebaseFirestore.instance
  //           .collection('AllProjects')
  //           .doc(nameList[i].toString() + "-" + ownerEmail[i].toString())
  //           .set({'dis': calculateDistance(latList[i], lngList[i], lat, lng)},
  //               SetOptions(merge: true));
  //     });
  //   }
  // }

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
              icon: CircleAvatar(
                radius: 27,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: Icon(
                  Icons.filter_list,
                  color: Color.fromARGB(255, 14, 10, 102),
                  size: 37,
                ),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: ListTile(
                    title: Text(
                      '?????????? ????????',
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
                      '?????? ????????',
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
                                  Text(
                                    "  ?????????? ???????? ???????????????? ?????????????????? ",
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
                                    "????-????-????????",
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
                                  Text("???????? ????????????",
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
                                  Text(
                                    "  ?????????? ??????????",
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
                                    "??-??-???????? ",
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
                                  Text("???????? ???????? ???????????? ?? ?????????????????? ",
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
                                  Text(
                                    " ?????????? ?????? ???????????? ?????????????? ?????????????????????? ",
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
                                    "????-??-????????",
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
                                  Text("???????? ???????????? ???????????? ??????????????????",
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
                                  Text(
                                    " ?????????? ???????? ",
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
                                    "????-??-????????",
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
                                  Text("???????? ???????? ???????????? ?? ??????????????????",
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
