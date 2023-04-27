
import 'dart:async';

import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
      => HomeScreen()));
    });
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage("images/images.png"),
          ),
        ),
      ),
    );
  }
}
