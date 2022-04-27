import 'package:divider/Screens/Groups/groups.dart';
import 'package:divider/Screens/Home/home.dart';
import 'package:divider/Screens/Profile/profile.dart';
import 'package:divider/Screens/SignUp/SignUp.dart';
import 'package:divider/Screens/Spltter/page1.dart';
import 'package:divider/Screens/Spltter/page2.dart';
import 'package:divider/Screens/Spltter/page3.dart';
import 'package:divider/Screens/Spltter/page4.dart';
import 'package:divider/Screens/welwelcome/welwelcome.dart';
import 'package:divider/constants.dart';
import 'package:flutter/material.dart';
import 'package:divider/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Divider',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Color.fromRGBO(19, 20, 22, 1),
      ),
      home: Welcomescreen(),
    );
  }
}
