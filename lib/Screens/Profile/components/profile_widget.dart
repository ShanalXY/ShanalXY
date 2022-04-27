import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prowid extends StatelessWidget {
  // final VoidCallback onClicked;

  const prowid({
    Key? key,

    //required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Color.fromARGB(255, 242, 176, 53);
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          )
        ],
      ),
    );
  }
}

Widget buildEditIcon(Color color) => buildCircle(
    color: Color.fromRGBO(19, 20, 22, 1),
    all: 3,
    child: buildCircle(
      color: color,
      all: 8,
      child: Icon(
        Icons.edit,
        size: 20,
      ),
    ));

Widget buildCircle({
  required Widget child,
  required double all,
  required Color color,
}) =>
    ClipOval(
        child: Container(
      padding: EdgeInsets.all(all),
      color: color,
      child: child,
    ));

Widget buildImage() {
  final image = AssetImage('assets/2.png');

  return ClipOval(
      child: Material(
    color: Colors.transparent,
    child: Ink.image(
      image: image,
      fit: BoxFit.cover,
      width: 128,
      height: 128,
      //child: InkWell(onTap: onClick),
    ),
  ));
}
