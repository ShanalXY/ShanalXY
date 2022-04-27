// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:divider/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // size provide us total height and width of screen
    return ListWheelScrollView(
        itemExtent: 120,
        physics: FixedExtentScrollPhysics(),
        perspective: 0.001,
        diameterRatio: 3,
        children: [
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,

          Gokarna(),
          ashwyn(),
          Samuel(),
          Paloma(),
          Steeve(),
        ]);
  }
}

class Gokarna extends StatelessWidget {
  const Gokarna({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 242, 176, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              size: 23,
                              color: Color.fromRGBO(19, 20, 22, 1),
                            ),
                          ),
                          TextSpan(
                              text: " Shanal Ak",
                              style: TextStyle(
                                  color: Color.fromRGBO(19, 20, 22, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class ashwyn extends StatelessWidget {
  const ashwyn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 242, 176, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              size: 23,
                              color: Color.fromRGBO(19, 20, 22, 1),
                            ),
                          ),
                          TextSpan(
                              text: " Ashwyn D'Silva",
                              style: TextStyle(
                                  color: Color.fromRGBO(19, 20, 22, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class Samuel extends StatelessWidget {
  const Samuel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 242, 176, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              size: 23,
                              color: Color.fromRGBO(19, 20, 22, 1),
                            ),
                          ),
                          TextSpan(
                              text: " Samuel Corda",
                              style: TextStyle(
                                  color: Color.fromRGBO(19, 20, 22, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class Paloma extends StatelessWidget {
  const Paloma({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 242, 176, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              size: 23,
                              color: Color.fromRGBO(19, 20, 22, 1),
                            ),
                          ),
                          TextSpan(
                              text: " Paloma Rodrigues",
                              style: TextStyle(
                                  color: Color.fromRGBO(19, 20, 22, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class Steeve extends StatelessWidget {
  const Steeve({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 242, 176, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              size: 23,
                              color: Color.fromRGBO(19, 20, 22, 1),
                            ),
                          ),
                          TextSpan(
                              text: " Steeve Shaji",
                              style: TextStyle(
                                  color: Color.fromRGBO(19, 20, 22, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class AnonButton extends StatelessWidget {
  const AnonButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            // minimumSize: Size.fromHeight(30),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            maximumSize: MediaQuery.of(context).size * 0.8,
            primary: Color.fromARGB(255, 229, 230, 231),
            onPrimary: Color.fromRGBO(19, 20, 22, 1),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          label: Text(''),
          icon: Icon(Icons.cruelty_free, color: Color.fromRGBO(19, 20, 22, 1)),

          //  style: ElevatedButton.styleFrom(
          //primary: Color.fromARGB(255, 242, 176, 53),
          //   onPrimary: Color.fromRGBO(19, 20, 22, 1)),

          onPressed: () => null),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    crossAxisAlignment:
    CrossAxisAlignment.center;
    return Container(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // minimumSize: Size.fromHeight(30),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
            maximumSize: MediaQuery.of(context).size * 0.8,
            primary: Color.fromARGB(255, 242, 176, 53),
            onPrimary: Color.fromRGBO(19, 20, 22, 1),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          child: Text('Create Group'),

          //  style: ElevatedButton.styleFrom(
          //primary: Color.fromARGB(255, 242, 176, 53),
          //   onPrimary: Color.fromRGBO(19, 20, 22, 1)),

          onPressed: () => null),
    );
  }
}

class DivideBillButton extends StatelessWidget {
  const DivideBillButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    crossAxisAlignment:
    CrossAxisAlignment.center;
    return Container(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // minimumSize: Size.fromHeight(30),
            padding: EdgeInsets.symmetric(horizontal: 67, vertical: 13),
            maximumSize: MediaQuery.of(context).size * 0.8,
            primary: Color.fromARGB(255, 242, 176, 53),
            onPrimary: Color.fromRGBO(19, 20, 22, 1),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          child: Text('Divide Bill'),

          //  style: ElevatedButton.styleFrom(
          //primary: Color.fromARGB(255, 242, 176, 53),
          //   onPrimary: Color.fromRGBO(19, 20, 22, 1)),

          onPressed: () => null),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        style: TextStyle(color: Color.fromARGB(255, 229, 230, 231)),
        cursorColor: Color.fromARGB(255, 242, 176, 53),
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.visibility,
              color: Color.fromARGB(255, 242, 176, 53),
            ),
            labelText: 'Password',
            labelStyle: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
            icon: Icon(
              Icons.lock,
              color: Color.fromARGB(255, 242, 176, 53),
            ),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: TextStyle(color: Color.fromARGB(255, 229, 230, 231)),
        cursorColor: Color.fromARGB(255, 242, 176, 53),
        decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 242, 176, 53),
            ),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
