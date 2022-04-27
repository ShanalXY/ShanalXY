// ignore_for_file: prefer_const_constructors

import 'package:divider/Screens/Groups/ddd.dart';
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
                  PasswordField(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 200.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Select Everyone Who had this',
                            style: TextStyle(
                                color: Color.fromARGB(255, 229, 230, 231),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ])),
        Padding(
          padding: const EdgeInsets.only(top: 210),
          child: ListWheelScrollView(
              itemExtent: 160,
              physics: FixedExtentScrollPhysics(),
              perspective: 0.001,
              diameterRatio: 3,
              children: [
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,

                Gokarna(),
                Goa(),
                Dandeli(),
                Manipal(),
              ]),
        )
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

class Gokarna extends StatefulWidget {
  const Gokarna({
    Key? key,
  }) : super(key: key);

  @override
  State<Gokarna> createState() => _GokarnaState();
}

class _GokarnaState extends State<Gokarna> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 22, 23, 23),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: "Ashwyn D'Silva",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 218, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.check_box,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: "Had this?",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: ":",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class ash extends StatefulWidget {
  const ash({Key? key}) : super(key: key);

  @override
  State<ash> createState() => _ashState();
}

class _ashState extends State<ash> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: (value) => setState(() => this.value = value!),
    );
  }
}

class Goa extends StatelessWidget {
  const Goa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 22, 23, 23),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: "Samuel Corda",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 218, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.check_box,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: "Had this?",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: ":",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class Dandeli extends StatelessWidget {
  const Dandeli({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 22, 23, 23),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: "Paloma Rodrigues",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 218, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.check_box,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: "Had this?",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: ":",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        )));
  }
}

class Manipal extends StatelessWidget {
  const Manipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Card(
          elevation: 4,
          color: Color.fromARGB(255, 22, 23, 23),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Container(
              //color: Colors.white,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: "Steeve Shaji",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 218, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.check_box,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: "Had this?",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: ":",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        )));
  }
}
