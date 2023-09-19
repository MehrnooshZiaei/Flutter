import 'package:flutter/material.dart';
// import 'package:rolldice_app/styled_text.dart';

import 'package:rolldice_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
// Alignment? startAlignment; // It is either of type alignment or null
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key); //One way to do so, not optimal

  // Way 1
  //const GradientContainer(this.gradientColors, {super.key});
  
  // Way 2
  GradientContainer({super.key, required this.gradientColors});

  final List<Color> gradientColors;
  
  @override //extra metadata
  Widget build(context) {
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors, 
            begin: startAlignment, 
            end: endAlignment,
            ),
          ),
          child: const Center(
            child: DiceRoller(),
          ),
        );
  }
}


// [ Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98) ]