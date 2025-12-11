
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class HomeBadge extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  const HomeBadge(this.text, {super.key, this.color, this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: color ?? Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: textColor ?? AppColors.blackColor),
      ),
    );
  }
}

class HomeChip extends StatelessWidget {
  final String text;
  final bool filled;
  final double width;
  final double height;
  final bool haveIcon=false;
  const HomeChip(this.text, {super.key, this.filled = true, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(color: Color(0xffE3E6EB))
      ),
      padding: EdgeInsets.symmetric( vertical: 6.h),
     width: width,
     height: height,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.blackColor,fontWeight: FontWeight.w500,fontSize: 12.sp),
        ),
      ),
    );
  }
}
class JobTypeChip extends StatelessWidget {
  final String text;
  final bool filled;
  final double width;
  final double height;
  
  const JobTypeChip(this.text, {super.key, this.filled = true, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(color: Color(0xffE3E6EB))
      ),
      padding: EdgeInsets.symmetric( vertical: 6.h),
     width: width,
     height: height,
      child: Center(
        child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SvgPicture.asset(MyAssets.images.svg.clock.path),
            SizedBox(width: 7.w,),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.blackColor,fontWeight: FontWeight.w500,fontSize: 12.sp),
            ),
          ],
        ),
      ),
    );
  }
}
class LocationChip extends StatelessWidget {
  final String text;
  final bool filled;
  final double width;
  final double height;
  
  const LocationChip(this.text, {super.key, this.filled = true, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(color: Color(0xffE3E6EB))
      ),
      padding: EdgeInsets.symmetric( vertical: 6.h),
     width: width,
     height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(MyAssets.images.svg.pin1.path),
          SizedBox(width:7.w,),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.blackColor,fontWeight: FontWeight.w500,fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}