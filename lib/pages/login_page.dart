import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(50),
                  child: Image.asset(
                    "assets/images/login.png",
                    width: 340,
                    fit: BoxFit.cover,
                  )),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email address", labelText: "Email"),
                      onChanged: (value) {
                        setState(() {
                       name = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      onTap:  ()async {
                        setState(() {
                                     changeButton=true;             
                                                });
                       await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context, Routes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 60,
                        width: changeButton ? 60 : 160,
                        alignment: Alignment.center,
                        child: changeButton? Icon(Icons.done, color: Colors.white,)  : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.shade600,
                          borderRadius: BorderRadius.circular(changeButton?60 :8),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed:() {
                    //      Navigator.pushNamed(context, Routes.homeRoute);
                    //             },
                    //  child: Text("Login" ),
                    //  style: TextButton.styleFrom(minimumSize: Size(160, 40) ),
                    //  )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
