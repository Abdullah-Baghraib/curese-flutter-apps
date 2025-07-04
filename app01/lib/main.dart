import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black54, // 0-9 a b c d e f
        body: GradientContainer(
          Color.fromARGB(255, 80, 2, 38),
          Color.fromARGB(255, 69, 15, 122),
        ),
      ),
    ),
  );
}

Widget myCustomText(String msg) {
  return Text(
    msg,
    style: TextStyle(
      color: Colors.black,
      //backgroundColor: Colors.amber,
      fontSize: 30,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      letterSpacing: -2,
      wordSpacing: 8,
      //height: 10,
      shadows: const [
        Shadow(
          color: Colors.amber,
          offset: Offset(-5, 10),
          blurRadius: 10,
        ),
        Shadow(
          color: Colors.green,
          offset: Offset(5, 10),
          blurRadius: 10,
        ),
        Shadow(
          color: Colors.blue,
          offset: Offset(15, 10),
          blurRadius: 10,
        ),
      ],
      decoration: TextDecoration.combine([
        TextDecoration.overline,
        TextDecoration.underline,
        TextDecoration.lineThrough,
      ]),
      decorationColor: Colors.blueAccent,
      decorationStyle: TextDecorationStyle.wavy,
      decorationThickness: 1,
    ),
  );
}
