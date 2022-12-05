import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:full_screen_menu/full_screen_menu.dart';
import 'package:wefaq/Homepage.dart';
import 'SessionScreen.dart';
import 'ProjectsTapScreen.dart';
import 'chats.dart';
import 'profileuser.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar(
      {Key? key, required this.updatePage, required this.currentHomeScreen})
      : super(key: key);

  final Function updatePage;
  final int currentHomeScreen;

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
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
                BottomBarButton(widget.currentHomeScreen, 0, Icons.home_filled,
                    widget.updatePage),
                BottomBarButton(widget.currentHomeScreen, 1,
                    Icons.list_alt_outlined, widget.updatePage),
                BottomBarButton(widget.currentHomeScreen, 3,
                    CupertinoIcons.collections, widget.updatePage),
                BottomBarButton(widget.currentHomeScreen, 4,
                    CupertinoIcons.chat_bubble, widget.updatePage),
                BottomBarButton(widget.currentHomeScreen, 5,
                    CupertinoIcons.profile_circled, widget.updatePage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class BottomBarMiddleButton extends StatelessWidget {
//   const BottomBarMiddleButton(this.currentHomeScreen, this.updatePage,
//       {Key? key})
//       : super(key: key);
//   final int currentHomeScreen;
//   final Function updatePage;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 55,
//       height: 55,
//       child: TextButton(
//         onPressed: () => {
//           FullScreenMenu.show(
//             context,
//             items: [
//               FSMenuItem(
//                   icon: Icon(Icons.lightbulb, color: Colors.white),
//                   text: Text(
//                     'Post project',
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(144, 64, 7, 87),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   gradient: new LinearGradient(colors: [
//                     Color.fromARGB(144, 64, 7, 87),
//                     Color.fromARGB(221, 137, 171, 187),
//                   ]),
//                   onTap: () {
//                     FullScreenMenu.hide();
//                     // Navigator.push(context,
//                     //     MaterialPageRoute(builder: (context) => PostProject()));
//                   }),
//               // FSMenuItem(
//               //     icon: Icon(Icons.post_add, color: Colors.white),
//               //     text: Text(
//               //       'Post event',
//               //       style: TextStyle(
//               //           fontSize: 20,
//               //           color: Color.fromARGB(144, 64, 7, 87),
//               //           fontWeight: FontWeight.bold),
//               //     ),
//               //     gradient: new LinearGradient(colors: [
//               //       Color.fromARGB(144, 64, 7, 87),
//               //       Color.fromARGB(221, 137, 171, 187),
//               //     ]),
//               //     onTap: () {
//               //       FullScreenMenu.hide();
//               //       // Navigator.push(context,
//               //       //     MaterialPageRoute(builder: (context) => PostEvent()));
//               //     }),
//             ],
//           )
//         },
//         child: Container(),
//       ),
//     );
//   }
// }

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()))
                  }
                else if (index == 4)
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => chatScreen()))
                  }
                else if (index == 1)
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjectsTabs()))
                  }
                else if (index == 3)
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SessionScreen()))
                  }
                else if (index == 5)
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => viewprofile()))
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
