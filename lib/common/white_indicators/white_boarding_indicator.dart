// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
 
class BoardingIndicator extends StatelessWidget {
   final int positionIndex, currentIndex;
  const BoardingIndicator({
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
            ? Colors.white
            : const Color.fromARGB(255, 187, 187, 187),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
