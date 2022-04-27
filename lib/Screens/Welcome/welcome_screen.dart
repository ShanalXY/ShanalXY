import 'package:flutter/material.dart';
import 'package:divider/Screens/Welcome/components/body.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(), //check this const later
    );
  }
}
