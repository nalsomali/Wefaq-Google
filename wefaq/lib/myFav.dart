import 'package:flutter/material.dart';
import 'package:wefaq/HomePage.dart';
import 'package:wefaq/consDetail.dart';
import 'package:wefaq/navBar.dart';

class FavScreen extends StatefulWidget {
  @override
  SessionScreensState createState() => SessionScreensState();
}

class SessionScreensState extends State<FavScreen> {
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
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 48, 66, 109),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
              automaticallyImplyLeading: false,
              shadowColor: Color.fromARGB(255, 215, 215, 215),
              elevation: 0.8,
              backgroundColor: Color.fromARGB(255, 242, 241, 241),
              actions: <Widget>[],
              title: Text(' مفضلتي ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(206, 0, 0, 0),
                  )),
            ),
            bottomNavigationBar: CustomNavigationBar(
              currentHomeScreen: 0,
              updatePage: () {},
            ),
            // Main List View With Builder
            body: ListView(children: [
              // Card Which Holds Layout Of ListView Item
              SizedBox(
                height: 10,
              ),
              Card(
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
                        color: Color.fromARGB(255, 0, 0, 0),
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

              // itemCount:_textEditingController!.text.isNotEmpty? nameListsearch.length  : nameListsearch.length,
            ]),
          ),
        ),
      ],
    );
  }
}
