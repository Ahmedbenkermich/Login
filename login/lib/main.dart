// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:LoginApp/pages/login.dart';
import 'package:LoginApp/pages/signup.dart';
import 'package:LoginApp/pages/welcom.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      
      routes: {
        "/" :(context) => const Welcom(),
        "/login" :(context) => const Login(),
        "/signup" :(context) => const Signup(),
      },
      
    );
  }
}