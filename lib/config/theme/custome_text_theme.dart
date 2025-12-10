import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/gen/fonts.gen.dart';




class CustomTextTheme {
  static TextTheme textTheme() {
    const FontWeight regular = FontWeight.w400;
    const FontWeight normal = FontWeight.w500;
    const FontWeight normalBold = FontWeight.w700;
    const FontWeight bold = FontWeight.w800;

    return TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        color: AppColors.blackColor,
        fontWeight: normal,
        fontFamily: MyFontFamily.dmSans,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color: AppColors.primaryColor,
        fontWeight: regular,
        fontFamily: MyFontFamily.dmSans,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        color: AppColors.greyColor,
        fontWeight: normal,
        fontFamily: MyFontFamily.dmSans,
      ),
      titleLarge: TextStyle(
        fontSize: ScreenUtil().setSp(22),
        color: AppColors.whiteColor,
        fontWeight: normalBold,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      titleMedium: TextStyle(
        fontSize: ScreenUtil().setSp(14),
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      titleSmall: TextStyle(
        fontSize: ScreenUtil().setSp(18),
        color: AppColors.blackColor,
        fontWeight: regular,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      displayLarge: TextStyle(
        fontSize: ScreenUtil().setSp(30),
        color: AppColors.whiteColor,
        fontWeight: bold,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      displayMedium: TextStyle(
        fontSize: ScreenUtil().setSp(26),
        color: AppColors.blackColor,
        fontWeight: normal,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      displaySmall: TextStyle(
        fontSize: ScreenUtil().setSp(16),
        color: AppColors.greyColor,
        fontWeight: normal,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      labelSmall: TextStyle(
        fontSize: ScreenUtil().setSp(16),
        color: AppColors.blackColor,
        fontWeight: regular,
        fontFamily: MyFontFamily.dmSans,
        // letterSpacing: -1.1,
        // height: 13.375904083251953 / 18,
      ),
      headlineMedium: TextStyle(
        fontSize: ScreenUtil().setSp(20),
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      headlineSmall: TextStyle(
        fontSize: ScreenUtil().setSp(16),
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
      // headlineLarge: TextStyle(
      //   fontSize: ScreenUtil().setSp(20),
      //   color: AppColors.blueDarkerColor,
      //   fontWeight: FontWeight.w500,
      //   fontFamily: MyFontFamily.poppins,
      //   // height: 13.375904083251953 / 18,
      // ),
      labelMedium: TextStyle(
        fontSize: ScreenUtil().setSp(20),
        color: AppColors.blackColor,
        fontWeight: normal,
        fontFamily: MyFontFamily.dmSans,
        // height: 13.375904083251953 / 18,
      ),
    );
  }
}
