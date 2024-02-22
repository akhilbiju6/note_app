import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/view/homescreen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),
    () {
     return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    },
    );
    super.initState();
  }
  @override
  void dispose() {
    
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Image.asset("assets/download.jpeg")),
      ),
    );
  }
}