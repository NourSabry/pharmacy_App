import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';

class RowTitle extends StatelessWidget {
  final String text1;
  final String text2;
  const RowTitle({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: CustomTextStyles.mediumBlackText,
          ),
          Text(
            text2,
            style: CustomTextStyles.blueText,
          ),
        ],
      ),
    );
  }
}
