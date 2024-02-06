import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    setState(() {
      var randNum = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-${randNum.toString()}.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(
                255, 219, 205, 47), // Background color of the button
            padding: const EdgeInsets.fromLTRB(
                24, 12, 24, 12), // Padding around the button content
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8.0), // Rounded corners for the button
              side: const BorderSide(
                  color: Colors.black), // Border color and width
            ),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Color.fromARGB(255, 21, 21, 21), // Text color
              fontSize: 18.0, // Font size
            ),
          ),
        )
      ],
    );
  }
}
