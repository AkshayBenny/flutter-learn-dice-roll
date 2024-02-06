import 'package:flutter/material.dart';
import "package:flutter_learn_dice_roll/dice_roller.dart";
// import 'package:flutter_learn_dice_roll/styled_text.dart';

const startAllignment = Alignment.topLeft;
const endAllignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAllignment,
          end: endAllignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
