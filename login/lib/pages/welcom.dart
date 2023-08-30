// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[300],
        title: Text("welcom", style: TextStyle(fontSize:25,),),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 127, vertical: 10)),
                  backgroundColor: MaterialStateProperty.all(Colors.purple[400]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");

                },
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 25),
                )),

            SizedBox(height: 15,),
            
            ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 120, vertical: 10)),
                  backgroundColor: MaterialStateProperty.all(Colors.purple[200]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 25),
                )),
          ]),
      ),
    );
  }
}