import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:wefaq/AdminNavBar.dart';
import 'GroupChatAdmin.dart';
import 'UserLogin.dart';
import 'navBar.dart';

class AdminChatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

Future<void> _signOut() async {
  // await FirebaseAuth.instance.signOut();
}

class _chatScreenState extends State<AdminChatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text("المحادثات",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(206, 0, 0, 0),
              )),
               actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Color.fromARGB(255, 14, 10, 102),
                ),
                onPressed: () {
                  showDialogFunc2(context);
                }),
          ],
        ),
        bottomNavigationBar: AdminCustomNavigationBar(
          currentHomeScreen: 0,
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
                          padding: const EdgeInsets.all(10.0),
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 255, 255),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/teamg.png'),
                            ),
                          ),
                        ),
                        const Text(
                          " مشروع وفاق",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(159, 22, 35, 63),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
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
                                    builder: (context) =>
                                        chatRoomGoogleAdmin()));
                          },
                        ),
                      ]),
                      Row(children: const [
                        SizedBox(
                          width: 60,
                        ),
                        Expanded(
                          child: Text(
                            "الهنوف: انا سعيده بانضمامي للفريق  ",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => chatRoomGoogleAdmin()));
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
                          padding: const EdgeInsets.all(10.0),
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 255, 255),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/teamg.png'),
                            ),
                          ),
                        ),
                        const Text(
                          " مشروع دلني",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(159, 22, 35, 63),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
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
                                    builder: (context) =>
                                        chatRoomGoogleAdmin()));
                          },
                        ),
                      ]),
                      Row(children: const [
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "عبدالله: أهلًا ",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => chatRoomGoogleAdmin()));
              },
            ),
          )
        ]));
  }
}


showDialogFunc2(context) {
            CoolAlert.show(
                              context: context,
                              title: "تأكيد",
                              confirmBtnColor: Color.fromARGB(144, 237, 42, 42),
                              cancelBtnText: "الغاء",

                              //cancelBtnTextStyle: TextStyle(color: Color.fromARGB(255, 62, 208, 14)),
                              confirmBtnText: 'تسجيل الخروج ',
                              onConfirmBtnTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UserLogin()));
                              },
                              type: CoolAlertType.confirm,
                              backgroundColor:
                                  Color.fromARGB(144, 224, 222, 222),
                              text: "هل تريد تسجيل الخروج؟",
                            );}
