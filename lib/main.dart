import 'package:exam1/main.dart';
import 'package:exam1/screen/dashscreen.dart';
import 'package:exam1/screen/detail_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Dashscreen(),
        'detail':(context) => Details(),
      },
      // home: Details(),
    ),
  );
}
