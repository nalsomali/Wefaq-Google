import 'package:flutter/material.dart';
import 'package:wefaq/AdminNavBar.dart';

class chatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 145, 124, 178),
        title: const Text("المحادثات",
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
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 85,
              child: GestureDetector(
                child: Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 255, 255, 255),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/teamg.png"),
                              ),
                            ),
                          ),
                          const Text(
                            " مشروع تطوير الويب",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(159, 35, 86, 84),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          SizedBox(
                            height: 20,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 112, 82, 149),
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ]),
                        Row(children: const [
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: Text(
                              "     محمد  " + ": " + "السلام عليكم",
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
