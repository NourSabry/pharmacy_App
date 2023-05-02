import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

class IconsSection extends StatelessWidget {
 
  const IconsSection({
    super.key,
 
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:   [
      const  Icon(
          Icons.search_rounded,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(width: 5.w,),
      const  Icon(
          Icons.shopping_cart_rounded,
          color: Colors.white,
          size: 30,
        ),
      ],
    );
  }
}
