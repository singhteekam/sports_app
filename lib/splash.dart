import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sports_app/home.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, new MaterialPageRoute(builder: (context) => MyHomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: FlutterLogo(size: 100,)));
  }
}