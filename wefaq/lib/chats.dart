import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:wefaq/HomePage.dart';
import 'Groupchat.dart';
import 'navBar.dart';
import 'package:flutter/cupertino.dart';

class chatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

Future<void> _signOut() async {
  // await FirebaseAuth.instance.signOut();
}

class _chatScreenState extends State<chatScreen> {
  // final auth = FirebaseAuth.instance;
  // late User signedInUser;
  // final _firestore = FirebaseFirestore.instance;

  var ProjectTitleList = " HomeScreenState.ProjectTitleList";
  var Last = [];
  var lastMessage = [];
  var senders = [];
  String? Email;
  @override
  void initState() {
    getLastMessage();
    super.initState();
  }

  var fillterd;
  Future getLastMessage() async {
    for (var i = 0; i < ProjectTitleList.length; i++)
      setState(() {
        add(ProjectTitleList[i].toString());
      });
  }

  add(String projectName) async {
    // fillterd = _firestore
    //     .collection(projectName + " project")
    //     .orderBy("time", descending: true)
    //     .limit(1)
    //     .snapshots();
    // bool enterTheLoop = false;
    // await for (var snapshot in fillterd) {
    //   for (var message in snapshot.docs) {
    //     setState(() {
    //       lastMessage.add(message['message']);
    //       senders.add(message['senderName']);
    //       enterTheLoop = true;
    //     });
    //   }
    //   if (!enterTheLoop) {
    //     lastMessage.add(" ");
    //     senders.add(" ");
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Color.fromARGB(255, 215, 215, 215),
          elevation: 0.8,
          backgroundColor: Color.fromARGB(255, 242, 241, 241),
          title: Text("المحادثات",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              )),
        ),
        bottomNavigationBar: CustomNavigationBar(
          currentHomeScreen: 4,
          updatePage: () {},
        ),
        body: ListView(children: [
          SizedBox(
            height: 85,
            child: GestureDetector(
              child: Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 255, 255),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/teamg.png'),
                            ),
                          ),
                        ),
                        Text(
                          "بحث دراسة اثار الاضطراب الاجتماعي",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 14, 10, 102),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 14, 10, 102),
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => chatRoomGoogle()));
                          },
                        ),
                      ]),
                      if (ProjectTitleList.length != 0)
                        Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "عبدالله: سعيد بإنضمامي للفريق البحثي، بإذن الله نطلعه بأفضل صوره  ",
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chatRoomGoogle()));
              },
            ),
          ),
          SizedBox(
            height: 85,
            child: GestureDetector(
              child: Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 255, 255),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/teamg.png'),
                            ),
                          ),
                        ),
                        Text(
                          "مشروع عوالم",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 14, 10, 102),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 14, 10, 102),
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => chatRoomGoogle()));
                          },
                        ),
                      ]),
                      if (ProjectTitleList.length != 0)
                        Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "الهنوف: السلام عليكم ورحمة الله وبركاته  ",
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chatRoomGoogle()));
              },
            ),
          )
        ]));
  }
}

showDialogFunc(context) {
  CoolAlert.show(
    context: context,
    title: "",
    confirmBtnColor: Color.fromARGB(144, 210, 2, 2),
    //  cancelBtnColor: Colors.black,
    //  cancelBtnTextStyle: TextStyle(color: Color.fromARGB(255, 237, 7, 7), fontWeight:FontWeight.w600,fontSize: 18.0),
    confirmBtnText: 'log out ',
    //cancelBtnText: 'Delete' ,
    onConfirmBtnTap: () {
      _signOut();
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => UserLogin()));
    },

    type: CoolAlertType.confirm,
    backgroundColor: Color.fromARGB(221, 212, 189, 227),
    text: "Are you sure you want to log out?",
  );
  // return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return Center(
  //           child: Material(
  //               type: MaterialType.transparency,
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(10),
  //                   color: const Color.fromARGB(255, 255, 255, 255),
  //                 ),
  //                 padding: const EdgeInsets.all(15),
  //                 height: 150,
  //                 width: MediaQuery.of(context).size.width * 0.9,
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: <Widget>[
  //                     // Code for acceptance role
  //                     Row(children: <Widget>[
  //                       Expanded(
  //                         flex: 2,
  //                         child: GestureDetector(
  //                           child: Text(
  //                             " Are you sure you want to log out? ",
  //                             style: const TextStyle(
  //                               fontSize: 14,
  //                               color: Color.fromARGB(159, 64, 7, 87),
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           ),
  //                           onTap: () {
  //                             // go to participant's profile
  //                           },
  //                         ),
  //                       ),
  //                       // const SizedBox(
  //                       //   height: 10,
  //                       // ),
  //                     ]),
  //                     SizedBox(
  //                       height: 35,
  //                     ),
  //                     //----------------------------------------------------------------------------
  //                     Row(
  //                       children: <Widget>[
  //                         Text("   "),
  //                         Text("     "),
  //                         ElevatedButton(
  //                           onPressed: () {
  //                             Navigator.push(
  //                                 context,
  //                                 MaterialPageRoute(
  //                                     builder: (context) => chatScreen()));
  //                           },
  //                           style: ElevatedButton.styleFrom(
  //                             surfaceTintColor: Colors.white,
  //                             shape: RoundedRectangleBorder(
  //                                 borderRadius: BorderRadius.circular(80.0)),
  //                             padding: const EdgeInsets.all(0),
  //                           ),
  //                           child: Container(
  //                             alignment: Alignment.center,
  //                             height: 40.0,
  //                             width: 100,
  //                             decoration: new BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(9.0),
  //                                 gradient: new LinearGradient(colors: [
  //                                   Color.fromARGB(144, 176, 175, 175),
  //                                   Color.fromARGB(144, 176, 175, 175),
  //                                 ])),
  //                             padding: const EdgeInsets.all(0),
  //                             child: Text(
  //                               "Cancel",
  //                               style: TextStyle(
  //                                   fontSize: 16,
  //                                   fontWeight: FontWeight.w600,
  //                                   color: Color.fromARGB(255, 255, 255, 255)),
  //                             ),
  //                           ),
  //                         ),
  //                         Container(
  //                           margin: EdgeInsets.only(left: 40),
  //                           child: ElevatedButton(
  //                             onPressed: () {
  //                               _signOut();
  //                               Navigator.push(
  //                                   context,
  //                                   MaterialPageRoute(
  //                                       builder: (context) => UserLogin()));
  //                               // CoolAlert.show(
  //                               //   context: context,
  //                               //   title: "Success!",
  //                               //   confirmBtnColor:
  //                               //       Color.fromARGB(144, 64, 6, 87),
  //                               //   type: CoolAlertType.success,
  //                               //   backgroundColor:
  //                               //       Color.fromARGB(221, 212, 189, 227),
  //                               //   text: "You have logged out successfully",
  //                               //   confirmBtnText: 'Done',
  //                               //   onConfirmBtnTap: () {
  //                               //     //send join requist
  //                               //     _signOut();
  //                               //     Navigator.push(
  //                               //         context,
  //                               //         MaterialPageRoute(
  //                               //             builder: (context) => UserLogin()));
  //                               //   },
  //                               // );
  //                             },
  //                             style: ElevatedButton.styleFrom(
  //                               surfaceTintColor: Colors.white,
  //                               shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.circular(80.0)),
  //                               padding: const EdgeInsets.all(0),
  //                             ),
  //                             child: Container(
  //                               alignment: Alignment.center,
  //                               height: 40.0,
  //                               width: 100,
  //                               decoration: new BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(9.0),
  //                                   gradient: new LinearGradient(colors: [
  //                                     Color.fromARGB(144, 210, 2, 2),
  //                                     Color.fromARGB(144, 210, 2, 2)
  //                                   ])),
  //                               padding: const EdgeInsets.all(0),
  //                               child: Text(
  //                                 "Log out",
  //                                 style: TextStyle(
  //                                     fontSize: 16,
  //                                     fontWeight: FontWeight.w600,
  //                                     color:
  //                                         Color.fromARGB(255, 255, 255, 255)),
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //               )));
  //     });
}
