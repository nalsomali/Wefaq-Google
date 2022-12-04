// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';
import 'package:wefaq/AdminNavBar.dart';
import 'package:wefaq/AdminProjectList.dart';

class PostProject extends StatefulWidget {
  const PostProject({Key? key}) : super(key: key);

  @override
  State<PostProject> createState() => _PostProjectState();
}

class _PostProjectState extends State<PostProject> {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _descriptionEditingController =
      TextEditingController();
  final TextEditingController _lookingForEditingController =
      TextEditingController();
  static final TextEditingController _startSearchFieldController =
      TextEditingController();
  static final TextEditingController _durationEditingControlle =
      TextEditingController();

  DetailsResult? startPosition;

  late GooglePlace googlePlace;
  List<AutocompletePrediction> predictions = [];
  Timer? _debounce;

  List<String> options = [];

  String? selectedCat;

  void initState() {
    super.initState();
    String apiKey = 'AIzaSyCkRaPfvVejBlQIAWEjc9klnkqk6olnhuc';
    googlePlace = GooglePlace(apiKey);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void autoCompleteSearch(String value) async {
    var result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null && mounted) {
      setState(() {
        predictions = result.predictions!;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text('اضافة مشروع',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 14, 10, 102),
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
                        text: 'عنوان المشروع',
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
            SizedBox(height: 25.0),
            TextFormField(
                controller: _startSearchFieldController,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 202, 198, 198)),
                    label: RichText(
                      text: TextSpan(
                          text: 'موقع المشروع',
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
                      borderSide: BorderSide(color: Colors.black87, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(144, 64, 7, 87),
                        width: 2.0,
                      ),
                    ),
                    suffixIcon: _startSearchFieldController.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                predictions = [];
                                _startSearchFieldController.clear();
                              });
                            },
                            icon: Icon(Icons.clear_outlined),
                          )
                        : Icon(Icons.location_searching,
                            color: Color.fromARGB(221, 137, 171, 187))),
                onChanged: (value) {
                  if (_debounce?.isActive ?? false) _debounce!.cancel();
                  _debounce = Timer(const Duration(milliseconds: 1000), () {
                    if (value.isNotEmpty) {
                      //places api
                      autoCompleteSearch(value);
                    } else {
                      //clear out the results
                      setState(() {
                        predictions = [];
                        startPosition = null;
                      });
                    }
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'مطلوب';
                  }
                }),
            ListView.builder(
                shrinkWrap: true,
                itemCount: predictions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(221, 137, 171, 187),
                      child: Icon(
                        Icons.pin_drop,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      predictions[index].description.toString(),
                    ),
                    onTap: () async {
                      final placeId = predictions[index].placeId!;
                      final details = await googlePlace.details.get(placeId);
                      if (details != null &&
                          details.result != null &&
                          mounted) {
                        setState(() {
                          startPosition = details.result;
                          _startSearchFieldController.text =
                              details.result!.name!;

                          predictions = [];
                        });
                      }
                    },
                  );
                }),
            SizedBox(height: 25.0),
            SizedBox(height: 4.0),
            TextFormField(
                maxLength: 60,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 202, 198, 198)),
                  label: RichText(
                    text: TextSpan(
                        text: 'تبحث عن',
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
                controller: _lookingForEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'مطلوب';
                  }
                }),
            SizedBox(height: 25.0),
            TextFormField(
                maxLength: 500,
                maxLines: 3,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 202, 198, 198)),
                  label: RichText(
                    text: TextSpan(
                        text: 'تفاصيل المشروع',
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
                controller: _descriptionEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'مطلوب';
                  }

                  return null;
                }),
            SizedBox(height: 15),
            TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 202, 198, 198)),
                  label: RichText(
                    text: TextSpan(
                        text: 'مدة المشروع',
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
                controller: _durationEditingControlle,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'مطلوب';
                  }
                }),
            SizedBox(height: 25),
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
                      _startSearchFieldController.clear();
                      _descriptionEditingController.clear();
                      _lookingForEditingController.clear();
                      _durationEditingControlle.clear();
                      selectedCat = "";

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
                        text: "تمت اضافة المشروع بنجاح",
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
