import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studmethods/pages/ray_navigator.dart';
import 'package:studmethods/pages/raya_homepage.dart';
import 'package:studmethods/pages/splash_screen.dart';

void main() {
  runApp(Stud());
}
class Stud extends StatefulWidget {
  const Stud({super.key});

  @override
  State<Stud> createState() => _StudState();
}

class _StudState extends State<Stud> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RayNavigator());
  }
}
