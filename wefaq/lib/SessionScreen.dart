import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wefaq/HomePage.dart';
import 'package:wefaq/consDetail.dart';
import 'package:wefaq/navBar.dart';

class SessionScreen extends StatefulWidget {
  @override
  SessionScreensState createState() => SessionScreensState();
}

class SessionScreensState extends State<SessionScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width

    return Column(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              shadowColor: Color.fromARGB(255, 215, 215, 215),
              elevation: 0.8,
              backgroundColor: Color.fromARGB(255, 242, 241, 241),
              actions: <Widget>[],
              title: Text(' جلسات استشارية ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(206, 0, 0, 0),
                  )),
            ),
            bottomNavigationBar: CustomNavigationBar(
              currentHomeScreen: 3,
              updatePage: () {},
            ),
            // Main List View With Builder
            body: ListView(children: [
              // Card Which Holds Layout Of ListView Item
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/hassan.jpeg'),
                    ),
                    title: Text("  م.حسان المالكي  ",
                        style: const TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 14, 10, 102),
                          fontWeight: FontWeight.w700,
                        )),
                    subtitle: Text(" بكالوريوس هندسة برمجيات ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          AssetImage('assets/images/abdualaziz.jpg'),
                    ),
                    title: Text(
                      "  م.عبدالعزيز العريج  ",
                      style: const TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(" رئيس مجلس ادارة جمعية المبرمجين ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                          'assets/images/blank-profile-picture-973460_640.png'),
                    ),
                    title: Text(
                      "  د.عبير النجار ",
                      style: const TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(" دكتوراة فيزياء نووية ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/amal.PNG'),
                    ),
                    title: Text(
                      "  م.امل عيسى  ",
                      style: const TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(" خبيرة ذكاء اصطناعي ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/majed.jpeg'),
                    ),
                    title: Text(
                      "  د.ماجد السلمي ",
                      style: const TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(" دكتوراة علوم حاسب ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/nahedh.PNG'),
                    ),
                    title: Text(
                      "  د. ناهض الحربي ",
                      style: const TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(" مستشار اداري تقني ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(145, 202, 202, 202),
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          AssetImage('assets/images/Abonrar7_400x400.jpg'),
                    ),
                    title: Text(
                      "  م.لؤي لبني ",
                      style: const TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 14, 10, 102),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(" بكالوريوس هندسة برمجيات ",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 38, 70, 138),
                        )),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewotherprofile()));
                        }),
                    isThreeLine: true,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherprofile()));
                },
              ),
              // itemCount:_textEditingController!.text.isNotEmpty? nameListsearch.length  : nameListsearch.length,
            ]),
          ),
        ),
      ],
    );
  }
}
