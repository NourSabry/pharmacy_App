import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/common/blue_indicators/blue_boarding_indicator.dart';
 
class BlueRowIndicators extends StatelessWidget {
  final int currentIndex;
  const BlueRowIndicators({
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
        BlueBoardingIndicator(
          positionIndex: 0,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 2.w,
        ),
        BlueBoardingIndicator(
          positionIndex: 1,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 2.w,
        ),
        BlueBoardingIndicator(
          positionIndex: 2,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 2.w,
        ),
        BlueBoardingIndicator(
          positionIndex: 3,
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
