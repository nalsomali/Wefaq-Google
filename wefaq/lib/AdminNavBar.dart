// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_menu/full_screen_menu.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wefaq/AdminHomePage.dart';

import 'package:wefaq/postAdviser.dart';
import 'package:wefaq/postProject.dart';

import 'AdminChats.dart';

class AdminCustomNavigationBar extends StatefulWidget {
  const AdminCustomNavigationBar(
      {Key? key, required this.updatePage, required this.currentHomeScreen})
      : super(key: key);

  final Function updatePage;
  final int currentHomeScreen;

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<AdminCustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.only(bottom: 24, top: 6),
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomBarButton(widget.currentHomeScreen, 2, Icons.home_filled,
                    widget.updatePage),
                BottomBarButton(widget.currentHomeScreen, 0,
                    CupertinoIcons.chat_bubble, widget.updatePage),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: BottomBarMiddleButton(
                    widget.currentHomeScreen, widget.updatePage)
                .pOnly(bottom: 32),
          ),
        ],
      ),
    );
  }
}

class BottomBarMiddleButton extends StatelessWidget {
  const BottomBarMiddleButton(this.currentHomeScreen, this.updatePage,
      {Key? key})
      : super(key: key);
  final int currentHomeScreen;
  final Function updatePage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 55,
      child: TextButton(
        onPressed: () => {
          FullScreenMenu.show(
            context,
            items: [
              FSMenuItem(
                  icon: Icon(Icons.lightbulb, color: Colors.white),
                  text: Text(
                    'اضافة مشروع',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 18, 15, 84),
                        fontWeight: FontWeight.bold),
                  ),
                  gradient: LinearGradient(colors: const [
                    Color.fromARGB(255, 8, 0, 156),
                    Color.fromARGB(255, 151, 174, 207),
                  ]),
                  onTap: () {
                    FullScreenMenu.hide();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostProject()));
                  }),
              FSMenuItem(
                  icon: Icon(Icons.person, color: Colors.white),
                  text: Text(
                    'اضافة مستشار',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 18, 15, 84),
                        fontWeight: FontWeight.bold),
                  ),
                  gradient: LinearGradient(colors: const [
                    Color.fromARGB(255, 8, 0, 156),
                    Color.fromARGB(255, 151, 174, 207),
                  ]),
                  onTap: () {
                    FullScreenMenu.hide();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostAdviser()));
                  }),
            ],
          )
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          elevation: MaterialStateProperty.all(8),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 151, 174, 207)),
          shadowColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.onSurface),
        ),
        child: Container(
          width: 55,
          height: 55,
          margin: const EdgeInsets.all(0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Color.fromARGB(255, 8, 0, 156),
                Color.fromARGB(255, 151, 174, 207),
              ], center: Alignment.topLeft, radius: 1)),
          child: Icon(
            CupertinoIcons.plus,
            color: (currentHomeScreen == 1)
                ? Color.fromARGB(255, 14, 10, 102)
                : Colors.white,
          ).p(8),
        ),
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  const BottomBarButton(
      this.currentPage, this.index, this.icon, this.updatePage,
      {Key? key})
      : super(key: key);
  final IconData icon;
  final int currentPage;
  final int index;
  final Function updatePage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 40,
      child: MaterialButton(
          splashColor: Color.fromARGB(0, 207, 6, 6),
          highlightColor: Color.fromARGB(0, 201, 25, 25),
          padding: const EdgeInsets.all(0),
          onPressed: () => {
                if (index == 0)
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminChatScreen()))
                  }
                else if (index == 2)
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => adminHomeScreen()))
                  }
              },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: Icon(
              icon,
              color: index == currentPage
                  ? Color.fromARGB(255, 14, 10, 102)
                  : Color.fromARGB(255, 134, 134, 136),
            ),
          )),
    );
  }
}
