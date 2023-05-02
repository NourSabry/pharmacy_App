import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/common/white_indicators/white_boarding_indicator.dart';

class RowIndicators extends StatelessWidget {
  final int currentIndex;
  const RowIndicators({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        BoardingIndicator(
          positionIndex: 0,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 2.w,
        ),
        BoardingIndicator(
          positionIndex: 1,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 2.w,
        ),
        BoardingIndicator(
          positionIndex: 2,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 2.w,
        ),
        BoardingIndicator(
          positionIndex: 3,
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
