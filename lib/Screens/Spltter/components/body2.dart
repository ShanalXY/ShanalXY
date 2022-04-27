// ignore_for_file: prefer_const_constructors

import 'package:divider/Screens/Groups/ddd.dart';
import 'package:divider/Screens/Spltter/page3.dart';
import 'package:flutter/material.dart';
import 'package:divider/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // size provide us total height and width of screen
    return Container(
        child: Stack(
      children: <Widget>[
        SizedBox.expand(
            child: DecoratedBox(
                decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 176, 53),
        ))),
        SizedBox(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Enter bill subtotal',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(19, 20, 22, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '(BEFORE tax and tip!)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(19, 20, 22, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      PasswordField()
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      DivideBillButton()
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ])),
      ],
    ));
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

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return groups();
            }));
          }),
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
            primary: Color.fromRGBO(19, 20, 22, 1),
            onPrimary: Color.fromARGB(255, 242, 176, 53),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          child: Text(
            'Next',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),

          //  style: ElevatedButton.styleFrom(
          //primary: Color.fromARGB(255, 242, 176, 53),
          //   onPrimary: Color.fromRGBO(19, 20, 22, 1)),

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return page3();
            }));
          }),
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
        keyboardType: TextInputType.number,
        obscureText: false,
        style: TextStyle(color: Color.fromARGB(255, 229, 230, 231)),
        cursorColor: Color.fromARGB(255, 242, 176, 53),
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Color.fromARGB(255, 242, 176, 53),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.currency_rupee_sharp),
              color: Color.fromARGB(255, 242, 176, 53),
            ),
            labelText: '',
            labelStyle: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
            // icon: Icon(
            //   Icons.lock,
            //  color: Color.fromARGB(255, 242, 176, 53),
            // ),
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
