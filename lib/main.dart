import 'package:flutter/material.dart';
import 'package:flutter_learn_dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 58, 0, 151),
            Color.fromARGB(255, 109, 0, 131),
          ],
        ),
      ),
    ),
  );
}
