

import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/login_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primaryColor: Colors.teal
      ),
      initialRoute: "/home",
      routes: {
        "/" : (context) => LoginPage(),
          "/home" : (context) => HomePage(),
        "/login" : (context)=> LoginPage(),
      },
    );
  }
}