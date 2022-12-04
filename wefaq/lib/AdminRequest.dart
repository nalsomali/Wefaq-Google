// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:wefaq/AdminNavBar.dart';

import 'package:wefaq/config/colors.dart';

import 'package:cool_alert/cool_alert.dart';

import 'AdminHomePage.dart';

class RequestListViewPageProject extends StatefulWidget {
  @override
  _RequestListProject createState() => _RequestListProject();
}

String P = '-';

final TextEditingController _AcceptingAsASController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _RequestListProject extends State<RequestListViewPageProject> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => adminHomeScreen()));
          },
        ),
        backgroundColor: const Color.fromARGB(255, 145, 124, 178),
        title: const Text('طلبات الانضمام',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.logout,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {}),
        ],
      ),
      bottomNavigationBar: AdminCustomNavigationBar(
        currentHomeScreen: 2,
        updatePage: () {},
      ),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 120,
                    child: GestureDetector(
                        child: Card(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(children: const <Widget>[
                                  Text(
                                    " مشروع تطوير الويب",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(159, 35, 86, 84),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
                                Row(children: <Widget>[
                                  TextButton(
                                    onPressed: () {},
                                    child: CircleAvatar(
                                      radius: 15,
                                    ),
                                  ),
                                  const Text(
                                    "محمد احمد",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(159, 32, 3, 43),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Expanded(
                                      child: SizedBox(
                                    width: 210,
                                  )),
                                  IconButton(
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color:
                                            Color.fromARGB(255, 170, 169, 179),
                                      ),
                                      onPressed: () {
                                        showDialogFunc(
                                          context,
                                          index,
                                        );
                                      }),
                                ]),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialogFunc(
                            context,
                            index,
                          );
                        }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

showDialogFunc(context, index) {
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
            height: 350,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(left: 270, top: 0),
                      child: IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 112, 82, 149),
                            size: 26,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RequestListViewPageProject()));
                          }))
                ]),
                const SizedBox(height: 30),
                Row(children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Text(
                        "هل تود رفض ام قبول الطلب ؟",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(159, 30, 27, 31),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 10),
                const Divider(color: kOutlineColor, height: 1.0),
                const SizedBox(height: 80),
                Row(
                  children: <Widget>[
                    const Text("     "),
                    ElevatedButton(
                      onPressed: () {
                        CoolAlert.show(
                            context: context,
                            title: "!نجاح",
                            confirmBtnColor:
                                const Color.fromARGB(144, 64, 6, 87),
                            type: CoolAlertType.success,
                            backgroundColor:
                                const Color.fromARGB(221, 212, 189, 227),
                            text: " تم رفض المتقدم بنجاح ",
                            confirmBtnText: 'تم',
                            onConfirmBtnTap: () {
                              // if (ProjectTitleList.length == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RequestListViewPageProject()));
                            });
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
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(144, 210, 2, 2),
                              Color.fromARGB(144, 210, 2, 2)
                            ])),
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "رفض",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                        onPressed: () {
                          CoolAlert.show(
                              context: context,
                              title: "!نجاح",
                              confirmBtnColor:
                                  const Color.fromARGB(144, 64, 6, 87),
                              type: CoolAlertType.success,
                              backgroundColor:
                                  const Color.fromARGB(221, 212, 189, 227),
                              text: " تم قبول المتقدم بنجاح ",
                              confirmBtnText: 'تم',
                              onConfirmBtnTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RequestListViewPageProject()));
                              });
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
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(144, 7, 133, 57),
                                Color.fromARGB(144, 7, 133, 57),
                              ])),
                          padding: const EdgeInsets.all(0),
                          child: const Text(
                            "قبول",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
