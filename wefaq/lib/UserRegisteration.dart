import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wefaq/RBackground.dart';
import 'package:wefaq/UserLogin.dart';
////import 'package:firebase_auth/firebase_auth.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:form_field_validator/form_field_validator.dart';

class UserRegistratin extends StatefulWidget {
  static const String screenRoute = 'UserRegistratin';

  const UserRegistratin({Key? key}) : super(key: key);

  @override
  _UserRegistratin createState() => _UserRegistratin();

  void onSubmit(String text) {}
}

bool isLoading = false;

class _UserRegistratin extends State<UserRegistratin> {
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  String get email => emailcontroller.text.trim();
  String get password => passcontroller.text.trim();
  String get FirstName => _firstnameController.text.trim();
  String get LastName => _lastnameController.text.trim();
  final _FormKey = GlobalKey<FormState>();

  bool showpass = true;
  bool showpass1 = true;
  bool has8char = false;
  bool hasuppercase = false;
  bool hasdigit = false;
  final ucasereg = RegExp('[A-Z]');
  final ara = RegExp(r'^[a-zA-Z]+$');
  final eng = RegExp(r'^[أ-ي]+$');
  final digit = RegExp('[1-9]');
  final _confirmpasscontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 243, 255),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(8.0),
        child: RBackground(
          child: Form(
            key: _FormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    "التسجيل",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontSize: 36),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.00),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLength: 15,
                    controller: _firstnameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value!) &&
                          !RegExp(r'^[أ-ي]+$').hasMatch(value!)) {
                        return "Only English or Arabic letters";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "John",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 202, 198, 198)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: ' * ',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  )),
                              TextSpan(
                                text: 'الاسم الاول',
                                style: const TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(199, 66, 23, 139)),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(height: size.height * 0.00),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLength: 15,
                    decoration: InputDecoration(
                        hintText: "Doe",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 202, 198, 198)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: RichText(
                          text: TextSpan(
                              text: 'اسم العائلة',
                              style: const TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(199, 66, 23, 139)),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                    ))
                              ]),
                        )),
                    controller: _lastnameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value!) &&
                          !RegExp(r'^[أ-ي]+$').hasMatch(value!)) {
                        return "Only English or Arabic letters";
                      }
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.0),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailcontroller,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "required"),
                      EmailValidator(errorText: "not valid email"),
                    ]),
                    decoration: InputDecoration(
                        hintText: "example@email.com",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 202, 198, 198)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: RichText(
                          text: TextSpan(
                              text: 'البريد الالكتروني',
                              style: const TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(199, 66, 23, 139)),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                    ))
                              ]),
                        )),
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: passcontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      }
                      if (!(value.characters.length >= 8) ||
                          !(value.contains(ucasereg)) ||
                          !(value.contains(digit))) {
                        return "password must contain: ";
                      }
                    },
                    onChanged: (value) {
                      if (value.characters.length >= 8) {
                        setState(() {
                          has8char = true;
                        });
                      } else {
                        has8char = false;
                      }

                      ///  password = value;
                      if (value.contains(ucasereg)) {
                        setState(() {
                          hasuppercase = true;
                        });
                      } else {
                        hasuppercase = false;
                      }
                      if (value.contains(digit)) {
                        setState(() {
                          hasdigit = true;
                        });
                      } else {
                        hasdigit = false;
                      }
                    },
                    obscureText: showpass,
                    decoration: InputDecoration(
                      hintText: "********",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 202, 198, 198)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: RichText(
                        text: TextSpan(
                            text: 'كلمة المرور',
                            style: const TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(199, 66, 23, 139)),
                            children: [
                              TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ))
                            ]),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showpass = !showpass;
                          });
                        },
                        child: !showpass
                            ? const Icon(
                                Icons.visibility,
                              )
                            : Icon(
                                Icons.visibility_off,
                              ),
                      ),
                    ),

                    //obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Row(
                      children: [
                        const Text('at least 8 characters'),
                        Spacer(),
                        has8char
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.error,
                                color: Colors.red,
                              )
                      ],
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Divider(color: Color.fromARGB(255, 126, 123, 123)),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Row(
                      children: [
                        const Text('1 numeric character'),
                        Spacer(),
                        hasdigit
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.error,
                                color: Colors.red,
                              )
                      ],
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Divider(color: Color.fromARGB(255, 126, 123, 123)),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Row(
                      children: [
                        const Text('1 uppercase letter'),
                        Spacer(),
                        hasuppercase
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.error,
                                color: Colors.red,
                              )
                      ],
                    )),
                SizedBox(height: size.height * 0.02),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _confirmpasscontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      }
                      if (value != passcontroller.value.text) {
                        return 'passwords do not match ! ';
                      }
                    },
                    obscureText: showpass1,
                    decoration: InputDecoration(
                      hintText: "********",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 202, 198, 198)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: RichText(
                        text: TextSpan(
                            text: 'تأكيد كلمة المرور',
                            style: const TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(199, 66, 23, 139)),
                            children: [
                              TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ))
                            ]),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showpass1 = !showpass1;
                          });
                        },
                        child: !showpass1
                            ? const Icon(
                                Icons.visibility,
                              )
                            : Icon(
                                Icons.visibility_off,
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_FormKey.currentState!.validate()) {
                        try {
                          print("Account Created Successfully");

                          print("user is stored Successfully");

                          CoolAlert.show(
                            context: context,
                            title: "Success!",
                            confirmBtnColor: Color.fromARGB(144, 64, 6, 87),
                            type: CoolAlertType.success,
                            backgroundColor: Color.fromARGB(221, 212, 189, 227),
                            text: "Created account successfully",
                            confirmBtnText: 'Log in',
                            onConfirmBtnTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserLogin()));
                            },
                          );
                        } catch (e) {
                          print("Error ${e.toString()}");
                          CoolAlert.show(
                            context: context,
                            title: "Sorry",
                            confirmBtnColor: Color.fromARGB(144, 64, 6, 87),
                            type: CoolAlertType.error,
                            backgroundColor: Color.fromARGB(221, 212, 189, 227),
                            text:
                                "This Email address is already used by another account!",
                            confirmBtnText: 'Try again',
                            onConfirmBtnTap: () {
                              Navigator.of(context).pop();
                            },
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
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
                        "تسجيل",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserLogin()))
                      },
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 14, 10, 102)),
                      ),
                    ),
                    Text(
                      " هل لديك حساب ؟ ",
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(123, 11, 13, 18)),
                    ),
                  ],
                )
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                //   child: GestureDetector(
                //     onTap: () => {
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => UserLogin()))
                //     },
                //     child: Text(
                //       "Already Have an Account? Log in",
                //       style: TextStyle(
                //           decoration: TextDecoration.underline,
                //           fontSize: 12,
                //           fontWeight: FontWeight.bold,
                //           color: Color.fromARGB(123, 11, 13, 18)),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
