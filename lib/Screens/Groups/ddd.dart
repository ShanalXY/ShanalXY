import 'package:divider/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:divider/Screens/Groups/components/body.dart';

class groups extends StatefulWidget {
  @override
  _groupsState createState() => _groupsState();
}

class _groupsState extends State<groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(19, 20, 22, 1),
        actions: [
          IconButton(
              padding: EdgeInsets.symmetric(
                horizontal: 37,
              ),
              onPressed: () {},
              icon: Icon(
                Icons.add_box_rounded,
                size: 45,
                color: Color.fromARGB(255, 242, 176, 53),
              ))
        ],
        title: Text(
          'Groups',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
        ),
      ),

      body: Body(), //check this const later
    );
  }
}
