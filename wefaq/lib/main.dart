import 'package:flutter/material.dart';
import 'package:wefaq/Homepage.dart';
import 'package:wefaq/SessionScreen.dart';
import 'package:wefaq/UserLogin.dart';
import 'AdminHomePage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 14, 10, 102),
          // useMaterial3: true,
          brightness: Brightness.light),
      home: UserLogin(),
    );
  }
}
