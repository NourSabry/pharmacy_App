// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';

class DiscountCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 240.h,
      margin: EdgeInsets.symmetric(vertical: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(255, 202, 202, 202),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.h,
            child: Image.asset(
              "assets/images/discount.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            "هربل ايسنسز للشعر مكونة من شامبو لاستعادة لمعان",
            style: CustomTextStyles.blackText,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Row(
              children: const [
                Text(
                  "225.00 ",
                  style: CustomTextStyles.blueText,
                ),
                Text(
                  "ج.م ",
                  style: CustomTextStyles.blackText,
                ),
                Text(
                  " 259.00 ",
                  style: CustomTextStyles.discountText,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(100.w, 30.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "أضف إلى العربة",
                  style: CustomTextStyles.mediumButtonText,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
