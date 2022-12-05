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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('طلبات الانضمام',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 14, 10, 102),
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 14, 10, 102),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => adminHomeScreen()));
            },
          ),
        ],
      ),
      bottomNavigationBar: AdminCustomNavigationBar(
        currentHomeScreen: 2,
        updatePage: () {},
      ),
      body: ListView(children: [
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
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(children: const <Widget>[
                            Text(
                              "  دراسة اثار الاضطراب الاجتماعي ",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 14, 10, 102),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ]),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            const Icon(Icons.person,
                                color: Color.fromARGB(255, 14, 10, 102)),
                            const Text("     "),
                            const Text("عبد الله محمد",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 38, 70, 138),
                                )),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 170, 169, 179),
                                ),
                                onPressed: () {
                                  showDialogFunc(context);
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showDialogFunc(context);
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
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(children: const <Widget>[
                            Text(
                              "  مشروع عوالم ",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 14, 10, 102),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ]),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            const Icon(Icons.person,
                                color: Color.fromARGB(255, 14, 10, 102)),
                            const Text("     "),
                            const Text("سارة فهد",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 38, 70, 138),
                                )),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromARGB(255, 170, 169, 179),
                                ),
                                onPressed: () {
                                  showDialogFunc(context);
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showDialogFunc(context);
              }),
        ),
      ]),
    );
  }
}

showDialogFunc(context) {
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
                            color: Color.fromARGB(255, 61, 74, 119),
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
                Row(children: const <Widget>[
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Text(
                        "هل تود قبول أم رفض الطلب ؟",
                        style: TextStyle(
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
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: ElevatedButton(
                        onPressed: () {
                          CoolAlert.show(
                              context: context,
                              title: "نجاح!",
                              confirmBtnColor: Color.fromARGB(255, 14, 10, 102),
                              type: CoolAlertType.success,
                              backgroundColor:
                                  Color.fromARGB(221, 255, 255, 255),
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
                    const Text("     "),
                    ElevatedButton(
                      onPressed: () {
                        CoolAlert.show(
                            context: context,
                            title: "نجاح!",
                            confirmBtnColor:
                                const Color.fromARGB(255, 14, 10, 102),
                            type: CoolAlertType.success,
                            backgroundColor: Color.fromARGB(221, 255, 255, 255),
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
