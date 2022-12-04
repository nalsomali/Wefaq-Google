import 'package:flutter/material.dart';
import 'AdminHomePage.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 215, 189, 226),
          useMaterial3: true,
          brightness: Brightness.light),
      home: adminHomeScreen(),
    );
  }
}
