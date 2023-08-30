// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.purple[400],
        onPressed: () {
          Navigator.pop(context);
           },),

      appBar: AppBar(
        title: Text("login", style: TextStyle(fontSize:25),),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),

      body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 7, 0, 5),
            decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(66)),
            width: 315,
            height: 45,
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your Email :",
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 27),
            padding: EdgeInsets.fromLTRB(15, 7, 0, 5),
            decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(66)),
            width: 315,
            height: 45,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Password :",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 127, vertical: 10)),
                backgroundColor: MaterialStateProperty.all(Colors.purple[400]),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25),
              ))
        ],
      ),
    )
   
    );
  }
}