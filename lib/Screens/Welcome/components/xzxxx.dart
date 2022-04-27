import 'package:flutter/material.dart';
import 'package:divider/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // size provide us total height and width of screen
    return Container(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 229, 230, 231)),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  SizedBox(
                    height: 8.0,
                  ),
                  // ignore: prefer_const_constructors
                  TextFieldContainer(
                    child: TextField(
                      style:
                          TextStyle(color: Color.fromARGB(255, 229, 230, 231)),
                      cursorColor: Color.fromARGB(255, 242, 176, 53),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
                          icon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 242, 176, 53),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFieldContainer(
                    child: TextField(
                      obscureText: true,
                      style:
                          TextStyle(color: Color.fromARGB(255, 229, 230, 231)),
                      cursorColor: Color.fromARGB(255, 242, 176, 53),
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Color.fromARGB(255, 242, 176, 53),
                          ),
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 242, 176, 53),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 242, 176, 53),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ])));
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
