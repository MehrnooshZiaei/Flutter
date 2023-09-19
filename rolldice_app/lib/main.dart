import 'package:flutter/material.dart';
import 'package:rolldice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 183, 168, 226),
        //body: GradientContainer([ Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98), ]),
        body: GradientContainer(gradientColors: const [ Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98), ]),
      ),
    ),
  );
}
