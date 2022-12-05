import 'dart:ffi';

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wefaq/UserLogin.dart';
import 'myProject.dart';
import 'navBar.dart';
// import 'package:wefaq/myProjects.dart';

class viewProfileTeamMembers extends StatefulWidget {
  @override
  State<viewProfileTeamMembers> createState() => _viewProfileTeamMembersState();
}

class _viewProfileTeamMembersState extends State<viewProfileTeamMembers> {
  String fname = "";
  String lname = "";
  String about = "";
  String experince = "";
  String cerifi = "";
  String skills = "";
  double rating = 0.0;
  String gitHub = "";
  List<String> selectedOptionList = [];

  @override
  void initState() {
    super.initState();
  }

  String profilepic = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 237, 240),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text('Profile', style: TextStyle(color: Colors.white)),
      //   actions: <Widget>[
      //     IconButton(
      //         icon: Icon(
      //           Icons.logout,
      //           color: Color.fromARGB(255, 255, 255, 255),
      //         ),
      //         onPressed: () {
      //           showDialogFunc2(context);
      //         }),
      //   ],
      //   backgroundColor: Color.fromARGB(255, 145, 124, 178),
      // ),
      bottomNavigationBar: CustomNavigationBar(
        currentHomeScreen: 5,
        updatePage: () {},
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 280,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  "assets/images/header_profile.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 220),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 95),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(children: <Widget>[
                                  SizedBox(
                                    width: 74,
                                  ),
                                  Expanded(
                                      child: Column(children: <Widget>[
                                    Text("الهنوف العواد",
                                        style: TextStyle(fontSize: 18)),
                                  ])),
                                  Expanded(
                                      child: Column(children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    userProjects()),
                                          );
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              right: 40.0),
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                201, 231, 229, 229),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            "المشاركات",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 51, 65, 104),
                                              fontSize: 14,
                                            ),
                                          ),
                                        )),
                                  ]))
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.only(left: 18, top: 235),
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.15),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/wefaq-5f47b.appspot.com/o/images%2Fprivate%2Fvar%2Fmobile%2FContainers%2FData%2FApplication%2FC908E9E7-E3D6-48F8-BD9C-5D0BEDCD799D%2Ftmp%2Fimage_picker_8D66EA46-E0D8-49D0-9ABC-F60A3E6DEF4B-720-00000072D1339A8C.png?alt=media&token=01f9fc26-3478-4833-8532-9ed16012a716",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "قيّم تجربتك مع زملائك ! ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 51, 65, 104),
                          fontSize: 16,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 218, 176, 61),
                        ),
                        onRatingUpdate: (newRating) {
                          setState(() {
                            // Timer(Duration(seconds: 3),
                            () {
                              Fluttertoast.showToast(
                                msg:
                                    "Thank you! your rating has been submitted successfully",
                                fontSize: 18,
                                gravity: ToastGravity.CENTER,
                                toastLength: Toast.LENGTH_LONG,
                                backgroundColor:
                                    Color.fromARGB(172, 98, 120, 146),
                              );
                            };

                            //add to userWhoRated
                          });
                        },
                      ),
                      //add to userWhoRated

                      Divider(),

                      ListTile(
                        title: Text("المعلومات العامة"),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("الخبرات"),
                        subtitle: Text("مبرمج لغة java ومصمم واجهات "),
                        leading: Icon(Icons.calendar_view_day),
                      ),
                      ListTile(
                        title: Text("المهارات"),
                        subtitle: Text("التصميم، التنظيم، الكتابة الاكاديمية"),
                        leading: Icon(Icons.schema_rounded),
                      ),
                      ListTile(
                        title: Text("الاهتمامات"),
                        subtitle: Text("برمجة لغات الويب و تطبيقات الهاتف"),
                        leading: Icon(
                          Icons.workspace_premium,
                          size: 33,
                        ),
                      ),
                      ListTile(
                          title: Text("التقييم"),
                          subtitle: Text("٤.٧٥/٥"),
                          leading: Icon(
                            Icons.star,
                            size: 33,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  showDialogFunc() {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
              child: Material(
                  type: MaterialType.transparency,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: const EdgeInsets.all(15),
                    height: 190,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // Code for acceptance role
                        Row(children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: GestureDetector(
                              child: Text(
                                "هل تريد تسجيل الخروج؟",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(159, 28, 27, 29),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {
                                // go to participant's profile
                              },
                            ),
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                        ]),
                        SizedBox(
                          height: 35,
                        ),
                        //----------------------------------------------------------------------------
                        Row(
                          children: <Widget>[
                            Text(""),
                            Text("        "),
                            ElevatedButton(
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                surfaceTintColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                                padding: const EdgeInsets.all(0),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: 40.0,
                                width: 100,
                                decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.0),
                                    gradient: new LinearGradient(colors: [
                                      Color.fromARGB(144, 176, 175, 175),
                                      Color.fromARGB(144, 176, 175, 175),
                                    ])),
                                padding: const EdgeInsets.all(0),
                                child: Text(
                                  "لا",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UserLogin()));
                                },
                                style: ElevatedButton.styleFrom(
                                  surfaceTintColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: const EdgeInsets.all(0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40.0,
                                  width: 100,
                                  decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.0),
                                      gradient: new LinearGradient(colors: [
                                        Color.fromARGB(144, 210, 2, 2),
                                        Color.fromARGB(144, 210, 2, 2)
                                      ])),
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    "تسجيل الخروج",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )));
        });
  }
}
