import 'package:flutter/material.dart';
import 'firstScreen.dart';
//import 'screens/login.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first(),
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Colors.white,
      )
  ));
}

