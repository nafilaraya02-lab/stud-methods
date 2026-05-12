import 'dart:async';

import 'package:flutter/material.dart';
import 'package:studmethods/pages/auth/civa_login.dart';

class SplashChren extends StatefulWidget {
  const SplashChren({super.key});

  @override
  State<SplashChren> createState() => _SplashChrenState();
}

class _SplashChrenState extends State<SplashChren> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 3),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blue.shade900],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'STUD! METHODs',
              style: TextStyle(color: Colors.blue.shade50, fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}