//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wefaq/resetPassword.dart';
//import 'package:wefaq/AdminHomePage.dart';
import 'Homepage.dart';
//import 'package:wefaq/HomeScreen.dart';
import 'package:wefaq/UserRegisteration.dart';
import 'package:wefaq/backgroundLogin.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'Homepage.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import 'package:cool_alert/cool_alert.dart';
//import 'package:wefaq/resetPassword.dart';
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
      backgroundColor: Color.fromARGB(255, 244, 243, 255),
      body: Background(
        child: Form(
          key: _FormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.02),
            
              SizedBox(height: size.height * 0.2),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "تسجيل الدخول",
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
                    
                      labelText: "البريد الالكتروني",
                      hintText: "example@email.com",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 202, 198, 198)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(199, 66, 23, 139),
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
                    labelText: "كلمة المرور",
                    hintText: "********",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 202, 198, 198)),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(199, 66, 23, 139),
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
                  child: Text(
                    "هل نسيت كلمةالمرور؟",
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
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
       
                       
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
                          Color.fromARGB(144, 67, 7, 87),
                          Color.fromARGB(221, 137, 171, 187)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 14,
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
                
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserRegistratin()))
                    },
                    child: Text(
                      "سجل الآن",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 14, 10, 102)),
                    ),
                  ),
                    Text(
                    " ليس لديك حساب ؟ ",
                    style: TextStyle(
                        // decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(123, 11, 13, 18)),
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