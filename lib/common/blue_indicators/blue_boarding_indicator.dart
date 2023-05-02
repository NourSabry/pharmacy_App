// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BlueBoardingIndicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const BlueBoardingIndicator({
    required this.currentIndex,
    required this.positionIndex,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: positionIndex == currentIndex
          ? size.width * 0.03
          : size.width * 0.015,
      height: size.height * 0.01,
      decoration: BoxDecoration(
        color: positionIndex == currentIndex
            ? Colors.blue
            : Colors.blue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
