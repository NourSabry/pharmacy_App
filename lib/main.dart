import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/config/constants/colors.dart';
import 'package:pharmacy_app/home_screen/home_screen.dart';
import 'package:pharmacy_app/config/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => MaterialApp(
          theme: ThemeData(
            primaryColor: CustomColors.yellow,
            fontFamily: 'DINNextLTArabic',
          ),
          debugShowCheckedModeBanner: false,
          home: const  HomeScreen(),
        ),
      ),
    );
  }
}
