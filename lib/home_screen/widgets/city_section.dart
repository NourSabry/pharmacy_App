import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/config/constants/colors.dart';
import 'package:pharmacy_app/config/constants/text_styles.dart';

class CitySection extends StatelessWidget {
  final String location;
  const CitySection({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "عنوان التوصيل",
        style: CustomTextStyles.greySmallText,
      ),
      subtitle: GestureDetector(
        onTap: () {},
        child: Text(
          location,
          style: CustomTextStyles.mediumButtonText,
        ),
      ),
      minLeadingWidth: -10,
    );
  }
}
