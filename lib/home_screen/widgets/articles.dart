import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/common/blue_indicators/blue_row_indicator.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';

class ArticlesContainer extends StatelessWidget {
  const ArticlesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 270.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 248, 226, 26),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "المدونة الطبية",
                  style: CustomTextStyles.mediumBlackText,
                ),
                Text(
                  "المزيد من المقالات",
                  style: CustomTextStyles.blueText,
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width - 30,
            height: 170.h,
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/article.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.h, bottom: 20.h, top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BlueRowIndicators(
                  currentIndex: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
