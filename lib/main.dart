import 'package:appmessage/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScree(),
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(primaryColor: Colors.red, accentColor: Color(0xFFFEF9EB)),
  ));
}
