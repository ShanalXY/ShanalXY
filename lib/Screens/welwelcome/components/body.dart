// ignore_for_file: prefer_const_constructors

import 'package:divider/Screens/Groups/ddd.dart';
import 'package:divider/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:divider/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // size provide us total height and width of screen
    return Container(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        SizedBox(
            width: double.infinity,
            height: size.height * 0.75,
            child: DecoratedBox(
                decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(20)),
              color: Color.fromARGB(255, 242, 176, 53),
            ))),
        SizedBox(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 300.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '',
                            style: TextStyle(
                                color: Color.fromARGB(255, 242, 176, 53),
                                fontSize: 30,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  SizedBox(
                    width: 400.0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SingleChildScrollView(
                        child: Text(
                          'Greetings,\n\n We at shield maintain a strict quality assurance policy and great products takes time. As we slow roast this app to give you a richer, smoother experience, here\'s a prototype that\'s exclusive to YOU, The students of BBA to try.\n\n Splitting Bills has never been as classy.\n\n Why Shield?\n\n'
                          '• Split your bills with great accuracy and minimal efforts.\n\n'
                          '• Prevents the possibilities of money related discrepancies.\n\n'
                          '• Sends in reminders for your domestic bills and schedule payments.\n\n'
                          '• Get a detailed report of expenditure to make more informed spending choices.\n\n'
                          '• Beautiful, minimalistic design with a state of the art user interface.\n\n',
                          style: TextStyle(
                              color: Color.fromRGBO(19, 20, 22, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  LoginButton(),
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
            primary: Color.fromRGBO(19, 20, 22, 1),
            onPrimary: Color.fromARGB(255, 242, 176, 53),

            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          child: Text('Proceed'),

          //  style: ElevatedButton.styleFrom(
          //primary: Color.fromARGB(255, 242, 176, 53),
          //   onPrimary: Color.fromRGBO(19, 20, 22, 1)),

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Welcomescreen();
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
        keyboardType: TextInputType.number,
        obscureText: false,
        style: TextStyle(color: Color.fromARGB(255, 229, 230, 231)),
        cursorColor: Color.fromARGB(255, 242, 176, 53),
        decoration: InputDecoration(
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
