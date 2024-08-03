import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/theme/font_wight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static const body1 = TextStyle(
    fontSize: 12,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle bodyLarge = TextStyle(
    fontSize: 24.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle bodySmall = TextStyle(
    fontSize: 14.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle h1 = TextStyle(
    fontSize: 24.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.light,
  );
  static TextStyle h2 = TextStyle(
    fontSize: 20.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: 'Almarai',
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: 'Almarai',
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle h3 = TextStyle(
    fontSize: 20.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.light,
  );

  static TextStyle bodyMediuum = TextStyle(
    fontSize: 16.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle headlineMedium = TextStyle(
    fontSize: 16.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle headlineLarge = TextStyle(
    fontSize: 20.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle h6 = TextStyle(
    fontSize: 16.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeight.w500,
  );

  static TextStyle button = TextStyle(
    fontSize: 16.sp,
    fontFamily: "Almarai",
    fontWeight: FontWeightHelper.semiBold,
  );
}
