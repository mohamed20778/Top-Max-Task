
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';

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
  const HomeChip(this.text, {super.key, this.filled = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 6.h),
      decoration: BoxDecoration(
        color: filled ? Colors.grey.shade100 : Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.blackColor),
      ),
    );
  }
}