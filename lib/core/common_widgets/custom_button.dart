import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart' show AppColors;

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String? text;
  final double? radius;
  final TextStyle? style;
  final void Function()? onPressed;
  final Color? backgroundColor;
  const CustomButton({super.key,this.width,this.height,this.text,this.onPressed, this.radius, this.style, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width ?? 343.w,
      height:height?? 48.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
            overlayColor: AppColors.whiteColor,
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 16.r),
            )
        ),
        child: Text(
          text!,
          style: style??Theme.of(context).textTheme.headlineSmall,

        ),
      ),
    );
  }
}
