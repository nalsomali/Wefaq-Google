// ignore_for_file: prefer_const_constructors

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:wefaq/AdminNavBar.dart';
import 'package:wefaq/AdminProjectList.dart';

class PostAdviser extends StatefulWidget {
  const PostAdviser({Key? key}) : super(key: key);

  @override
  State<PostAdviser> createState() => _PostAdviserState();
}

class _PostAdviserState extends State<PostAdviser> {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _descriptionEditingController =
      TextEditingController();
  final TextEditingController _urlEditingController = TextEditingController();

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 182, 168, 203),
          title: Text('اضافة مستشار',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ))),
      bottomNavigationBar: AdminCustomNavigationBar(
        currentHomeScreen: 1,
        updatePage: () {},
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          children: <Widget>[
            TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 202, 198, 198)),
                  label: RichText(
                    text: TextSpan(
                        text: 'اسم المستشار',
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(144, 64, 7, 87)),
                        children: const [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                  labelStyle: TextStyle(
                      fontSize: 18, color: Color.fromARGB(144, 64, 7, 87)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(144, 64, 7, 87),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(144, 64, 7, 87),
                      width: 2.0,
                    ),
                  ),
                ),
                controller: _nameEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'مطلوب';
                  }
                }),
            SizedBox(height: 50.0),
            TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 202, 198, 198)),
                  label: RichText(
                    text: TextSpan(
                        text: "رابط حجز الجلسات",
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(144, 64, 7, 87)),
                        children: const [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(144, 64, 7, 87),
                      width: 2.0,
                    ),
                  ),
                ),
                controller: _descriptionEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'مطلوب';
                  }
                }),
            SizedBox(height: 50.0),
            TextFormField(
                maxLength: 500,
                maxLines: 3,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 202, 198, 198)),
                  label: RichText(
                    text: TextSpan(
                        text: " تفاصيل المستشار",
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(144, 64, 7, 87)),
                        children: const [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(144, 64, 7, 87),
                      width: 2.0,
                    ),
                  ),
                ),
                controller: _urlEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'مطلوب';
                  }

                  return null;
                }),
            SizedBox(height: 50.0),
            SizedBox(
              width: 50,
              height: 50.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(144, 64, 7, 87),
                  ),
                  child: Text('اضافة',
                      style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      // for sorting purpose

                      //Clear

                      _nameEditingController.clear();
                      _urlEditingController.clear();
                      _descriptionEditingController.clear();

                      //sucess message
                      CoolAlert.show(
                        context: context,
                        title: "!نجاح",
                        confirmBtnColor: Color.fromARGB(144, 64, 7, 87),
                        onConfirmBtnTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      adminProjectsListViewPage()));
                        },
                        type: CoolAlertType.success,
                        backgroundColor: Color.fromARGB(221, 212, 189, 227),
                        text: "تمت اضافة المستشار بنجاح",
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
