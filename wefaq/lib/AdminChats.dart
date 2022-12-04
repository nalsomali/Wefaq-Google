import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:wefaq/AdminNavBar.dart';
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
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            title: const Text("المحادثات",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 14, 10, 102),
                )),
            leading: const Icon(
              Icons.logout,
              color: Color.fromARGB(255, 14, 10, 102),
            )),
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
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromARGB(255, 14, 10, 102),
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                        Expanded(child: SizedBox()),
                        const Text(
                          " مشروع وفاق",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(159, 22, 35, 63),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
                      ]),
                      Row(children: const [
                        SizedBox(
                          width: 150,
                        ),
                        Expanded(
                          child: Text(
                            "!الهنوف: انا سعيده بانضمامي للفريق  ",
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
              onTap: () {},
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
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromARGB(255, 14, 10, 102),
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                        Expanded(child: SizedBox()),
                        const Expanded(
                          child: Text(
                            "مشروع دلني",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(159, 22, 35, 63),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
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
                      ]),
                      Row(children: const [
                        SizedBox(
                          width: 250,
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
              onTap: () {},
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

    confirmBtnText: 'log out ',
    //cancelBtnText: 'Delete' ,
    onConfirmBtnTap: () {
      _signOut();
    },

    type: CoolAlertType.confirm,
    backgroundColor: Color.fromARGB(221, 212, 189, 227),
    text: "Are you sure you want to log out?",
  );
}
