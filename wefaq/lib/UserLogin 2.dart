import 'package:flutter/material.dart';
import 'package:wefaq/AdminHomePage.dart';
import 'package:wefaq/backgroundHome.dart';
import 'package:wefaq/resetPassword.dart';
//import 'package:wefaq/AdminHomePage.dart';
import 'Homepage.dart';
//import 'package:wefaq/HomeScreen.dart';
import 'package:wefaq/UserRegisteration.dart';
import 'package:wefaq/backgroundLogin.dart';
import 'Homepage.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:wefaq/Homepage.dart';
import 'SessionScreen.dart';

import 'backgroundLogin.dart';
import 'main.dart';

class UserLogin extends StatefulWidget {
  static const String screenRoute = 'UserLogin';

  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLogin createState() => _UserLogin();
}

class _UserLogin extends State<UserLogin> {
  GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  bool showpass = true;
  //final _auth = FirebaseAuth.instance;

  late String email;
  late String password;
  var names = [];
  var emails = [];

  @override
  void initState() {
    //  get();
    super.initState();
  }

  // Future get() async {
  //   var fillterd = FirebaseFirestore.instance
  //       .collection("AllProjects")
  //       .where("email", isEqualTo: FirebaseAuth.instance.currentUser!.email)
  //       .snapshots();
  //   await for (var snapshot in fillterd)
  //     for (var project in snapshot.docs) {
  //       setState(() {
  //         names.add(project["name"]);
  //       });
  //     }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 246, 253),
      body: BackgroundHome(
        child: Form(
          key: _FormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.04),
              
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "?????????? ????????????",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 10, 102),
                      fontSize: 34),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                alignment: Alignment.centerRight,
                // alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "???????????? ????????????????????",
                      hintText: "example@email.com",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 202, 198, 198)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                      )),
                  // validator: MultiValidator(
                  //     [RequiredValidator(errorText: 'required')]),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.centerRight,
                //alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "required";
                    }
                  },
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: showpass,
                  decoration: InputDecoration(
                    labelText: "???????? ????????????",
                    hintText: "********",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 202, 198, 198)),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(255, 14, 10, 102),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          showpass = !showpass;
                        });
                      },
                      child: showpass
                          ? const Icon(
                              Icons.visibility_off,
                            )
                          : Icon(
                              Icons.visibility,
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResetScreen()))
                  },
                  child: const Text(
                    "???? ???????? ??????????????????????",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 10, 102)),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
                  onPressed: () async {
                    if (email == "wefaq@gmail.com") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => adminHomeScreen()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 14, 10, 102),
                          Color.fromARGB(255, 14, 10, 102),
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "?????????? ????????????",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    " ?????? ???????? ???????? ?? ",
                    style: TextStyle(
                        // decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(123, 11, 13, 18)),
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserRegistratin()))
                    },
                    child: Text(
                      "?????? ????????",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 14, 10, 102)),
                    ),
                  ),
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
