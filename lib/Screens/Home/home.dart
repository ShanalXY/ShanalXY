import 'package:divider/Screens/Friends/friends.dart';
import 'package:divider/Screens/Groups/groups.dart';
import 'package:divider/Screens/Profile/ProfileView.dart';
import 'package:divider/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:divider/Screens/Home/components/body.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 1;
  final screens = [
    friends(),
    Body(),
    groups(),
    profileview(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(19, 20, 22, 1),
          selectedItemColor: Color.fromARGB(255, 242, 176, 53),
          unselectedItemColor: Color.fromARGB(255, 81, 81, 81),
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                //color: Colors.grey,
              ),
              label: 'Friends',
              backgroundColor: Color.fromARGB(255, 211, 211, 211),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                //color: Colors.grey,
              ),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 211, 211, 211),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
                //  color: Colors.grey,
              ),
              label: 'Group',
              backgroundColor: Color.fromARGB(255, 211, 211, 211),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_rounded
                  //  color: Colors.grey,
                  ),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 211, 211, 211),
            ),
          ],
        )
        // PageStorage(bucket: bucket,child:currentScreen,),
        );
  }
}
