import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 3000), () {
      Navigator.pushNamed(context, 'login');
    });

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login.png'), fit: BoxFit.cover),
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue.shade300],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 360,
                ),
                Text(
                  StringConst.WELCOME,
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  StringConst.WELCOME_MESSAGE,
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 22),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
