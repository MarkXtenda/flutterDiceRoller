import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randomizer = Random();
  
  var activeRoll = 'assets/dice-4.png';

  void rollDice() {
    setState(() {
      var currentRoll = randomizer.nextInt(6) + 1;
      activeRoll = 'assets/dice-$currentRoll.png';
    });
  }
  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                activeRoll, 
                width: 200,),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 32)),
                  child: const Text("Roll Me!"))
                ]
            );
  }
}