// ignore_for_file: prefer_const_constructors

import 'package:divider/Screens/Profile/profile.dart';
import 'package:divider/Screens/Welcome/Welcome_Screen.dart';
import 'package:flutter/material.dart';
import 'package:divider/constants.dart';
import 'package:divider/Screens/Home/home.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // size provide us total height and width of screen
    return SingleChildScrollView(
      child: Container(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              primary: Color.fromARGB(255, 229, 230, 231),
                            ),
                            child: Text("Log In"),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Welcomescreen();
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 229, 230, 231)),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Welcome to Divide!',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    SizedBox(
                      height: 8.0,
                    ),
                    // ignore: prefer_const_constructors
                    EmailField(),
                    SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    PasswordField(),
                    SizedBox(
                      height: 32.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        LoginButton()
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),

                    Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'or login with social account',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 95, 95, 95)),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 120),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'By clicking Join Divide, you are agreeing to the \n       Terms of Use and the Privacy Policy',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 95, 95, 95)),
                            ),
                          ),
                        )
                      ],
                    )
                  ]))),
    );
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
    return Container(
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            // minimumSize: Size.fromHeight(30),
            padding: EdgeInsets.symmetric(horizontal: 75, vertical: 13),
            maximumSize: MediaQuery.of(context).size * 0.8,
            primary: Color.fromARGB(255, 242, 176, 53),
            onPrimary: Color.fromRGBO(19, 20, 22, 1),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          label: Text('Join Divide!'),
          icon: Icon(Icons.arrow_right_alt_sharp,
              color: Color.fromRGBO(19, 20, 22, 1)),

          //  style: ElevatedButton.styleFrom(
          //primary: Color.fromARGB(255, 242, 176, 53),
          //   onPrimary: Color.fromRGBO(19, 20, 22, 1)),

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return profile();
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
