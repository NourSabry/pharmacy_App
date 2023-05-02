// ignore_for_file: dead_code, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 45.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 233, 64, 120),
        border: Border.all(
          color: const Color.fromARGB(255, 233, 64, 120),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "صرف روشتة",
            style: CustomTextStyles.mediumButtonText,
          ),
          SizedBox(
            width: 3.w,
          ),
          const Icon(
            Icons.menu_book,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
