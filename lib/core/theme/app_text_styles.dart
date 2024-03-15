import 'app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle anotherColor24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.anotherColor,
  );
  static TextStyle anotherColor22Bold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.anotherColor,
  );
  static TextStyle anotherColor18 = TextStyle(
    fontSize: 18.sp,
    color: AppColors.anotherColor,
  );
  static TextStyle anotherColor22 = TextStyle(
    fontSize: 22.sp,
    color: AppColors.anotherColor,
  );
  static TextStyle background20Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.backgroundColor,
  );
  static TextStyle background22Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22.sp,
    color: AppColors.backgroundColor,
  );
  static TextStyle anotherColor32Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
    color: AppColors.anotherColor,
  );
  static TextStyle secondaryColor18WithOpacity = TextStyle(
    fontSize: 18.sp,
    color: AppColors.secondaryColor.withOpacity(0.8),
  );
}
