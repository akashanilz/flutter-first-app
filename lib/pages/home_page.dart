import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int days=20;
    final String name="araaaaaa";
    return  Scaffold(
      appBar: AppBar(
        title: Text("Akash App"),
      ),
        body: Center(
          child: Container(
          child: Text("Hello $days welcome to my app $name"),
          ),
        ),
      drawer: Drawer(),
      );
  }
}