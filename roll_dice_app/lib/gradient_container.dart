import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignment = Alignment.topLeft ;
const endAlignment = Alignment.bottomRight ;

class GradientContainer extends StatelessWidget{

  GradientContainer({super.key, required this.gradientColors});
  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
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
