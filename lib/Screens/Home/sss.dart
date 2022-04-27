import 'package:divider/Screens/Groups/groups.dart';
import 'package:flutter/material.dart';
import 'package:divider/Screens/Home/components/body.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currenttTab = 0;
  final List<Widget> screens = [groups()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = groups();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // PageStorage(bucket: bucket,child:currentScreen,),
    );
  }
}
