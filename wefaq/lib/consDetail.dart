import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wefaq/SessionScreen.dart';
import 'package:wefaq/myProject.dart';
import 'package:wefaq/navBar.dart';

class viewotherprofile extends StatefulWidget {
  @override
  State<viewotherprofile> createState() => _viewprofileState();
}

class _viewprofileState extends State<viewotherprofile> {
  List<String> selectedOptionList = [];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 241, 241),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SessionScreen()));
            }),
        automaticallyImplyLeading: false,
        shadowColor: Color.fromARGB(255, 215, 215, 215),
        elevation: 0.8,
        backgroundColor: Color.fromARGB(255, 242, 241, 241),
        title: Text(' حساب المستشار ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(206, 0, 0, 0),
            )),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentHomeScreen: 0,
        updatePage: () {},
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Image(
                  image: AssetImage(
                    "assets/images/cons.png",
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
                        margin: EdgeInsets.only(top: 120),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Text("      م." + "حسان " + " المالكي",
                                        style: TextStyle(fontSize: 18)),
                                    Expanded(
                                      child: SizedBox(
                                        width: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 0),
                                      height: 56.0,
                                      width: 56.0,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.favorite,
                                            color: Color.fromARGB(
                                                255, 186, 48, 48),
                                            size: 30,
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ]),
                                  Row(children: <Widget>[
                                    Expanded(
                                        child: Column(children: <Widget>[
                                      Text("  خبير تجربة مستخدم",
                                          style: TextStyle(fontSize: 14)),
                                      ListTile(
                                        contentPadding: EdgeInsets.all(0),

                                        //You can add Subtitle here
                                      ),
                                    ])),
                                    Column(
                                      children: <Widget>[
                                        GestureDetector(
                                            onTap: () =>
                                                launch("https://calendly.com"),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 72, 119, 194),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Text(
                                                "حجز جلسة",
                                                style: TextStyle(
                                                  //  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(left: 15, top: 140),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.15),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/hassan.jpeg'),
                            fit: BoxFit.cover,
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
                        ListTile(
                          title: Text("نبذة",
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 47, 47, 47),
                                // fontWeight: FontWeight.w600,
                              )),
                          subtitle: Text(
                              " مستشار تقني متخصص في مجال تطوير التطبيقات  ",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 121, 121, 121),
                              )),
                          leading: Icon(Icons.format_align_center),
                        ),
                        Divider(
                            height: 2,
                            color: Color.fromARGB(66, 108, 108, 108)),
                        ListTile(
                          title: Text("تعليم",
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 47, 47, 47),
                                // fontWeight: FontWeight.w600,
                              )),
                          subtitle: Text(" بكالوريوس هندسة برمجيات   ",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 121, 121, 121),
                              )),
                          leading: Icon(Icons.calendar_view_day),
                        ),
                        Divider(
                            height: 2,
                            color: Color.fromARGB(66, 108, 108, 108)),
                        ListTile(
                          title: Text("مجالات الخبرة",
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 47, 47, 47),
                                // fontWeight: FontWeight.w600,
                              )),
                          subtitle: Text(" -Flutter\n -Java  ",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 121, 121, 121),
                              )),
                          leading: Icon(Icons.schema_rounded),
                        ),
                        Divider(
                            height: 2,
                            color: Color.fromARGB(66, 108, 108, 108)),
                        ListTile(
                          title: Text("الجوائز والشهادات"),
                          subtitle: Text(
                              "الحصول على افضل مشروع تقني في مسابقة التحول الرقمي \n لعام ٢٠٢٢، افضل مشوع تخرج في قطاع الصحة"),
                          leading: Icon(
                            Icons.workspace_premium,
                            size: 33,
                          ),
                        ),

                        /* ListTile(
                          title: Text(" "),
                          subtitle: ElevatedButton(
                            child: Text('حجز جلسة'),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 72, 119, 194),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 7),
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
