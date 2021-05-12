import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'Screens/Home/home_screen.dart';
import 'Screens/Welcome/welcome_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kWhiteColor, primaryColor: kPrimaryColor),
      home: WelcomeScreen(),
    );
  }
}
