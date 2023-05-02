import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';
import 'package:pharmacy_app/home_screen/widgets/city_section.dart';
import 'package:pharmacy_app/home_screen/widgets/icons_section.dart';
import 'package:pharmacy_app/common/white_indicators/row_indicator.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.r),
          bottomRight: Radius.circular(25.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: const CitySection(
              location: "45 شارع التسعين، التجمع الخامس",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "أهلا، مجدي",
                  style: CustomTextStyles.enormousWhiteText,
                ),
                IconsSection(),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 160.h,
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 15.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/images/50percent.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.h, bottom: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RowIndicators(
                  currentIndex: _currentIndex,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
