import 'package:flutter/material.dart';
import 'package:quiz_app/logo_container.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  List<Color> gradientColors = [];
  GradientContainer({super.key, required this.gradientColors});

  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: LogoContainer(),
      ),
    );
  }
}