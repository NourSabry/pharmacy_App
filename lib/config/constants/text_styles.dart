import 'package:flutter/material.dart';
import 'package:pharmacy_app/config/constants/colors.dart';

class CustomTextStyles {
  static const titleStyle = TextStyle(
    color: Color(0xFF212121),
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  static const descStyle = TextStyle(
    color: Color(0xFF757575),
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const mediumBlackText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const blackText = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const mediumButtonText = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const mediumBoldButtonText = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );
  static const blackMediumBoldButtonText = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const greyTButtonText = TextStyle(
    color: Color(0xFF616161),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const greySmallTButtonText = TextStyle(
    color: Color(0xFF616161),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const head2Style = TextStyle(
    fontWeight: FontWeight.w700,
    color: Color(0xFF212121),
    fontSize: 16,
  );
  static const blackSmallText = TextStyle(
    fontWeight: FontWeight.w500,
    color: Color(0xFF212121),
    fontSize: 12,
  );
  static const greySmallText = TextStyle(
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 223, 223, 223),
    fontSize: 12,
  );
  static const mediumYellowText = TextStyle(
    fontWeight: FontWeight.w500,
    color: CustomColors.yellow,
    fontSize: 14,
  );
  static const enormousWhiteText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: Colors.white,
  );
  static const blueText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.blue,
  );
   static const discountText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.grey,
    decoration: TextDecoration.lineThrough,
  );
}
