import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle headingBold36 =  TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackSapphire,
    // height: (43.2/36).sp
  );

  static  TextStyle get blackTheme16 => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    height: (19.2/16).sp
  );

  static  TextStyle get blackTheme18 => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static  TextStyle get blackTheme12 => const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    color: AppColors.black,
  );

  static  TextStyle get whiteTheme16 => const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static  TextStyle get blackTheme14 => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.softBlueLavender,
  );
  
  static TextStyle copyWith({
    required TextStyle baseStyle,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return baseStyle.copyWith(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }
}
