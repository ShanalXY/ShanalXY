import 'package:divider/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:divider/Screens/Profile/components/body.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(), //check this const later
    );
  }
}
