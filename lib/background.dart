import 'package:flutter/material.dart';
import 'package:tutorial/dice_roller.dart';

class WidgetAppWithBackgroundGradient extends StatelessWidget {
  const  WidgetAppWithBackgroundGradient(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              color1, 
              color2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            ),
          child: const Center(
            child: DiceRoller(),
          ),
        );
  }
}