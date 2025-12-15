import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Image.asset(MyAssets.images.png.figma.path),
             SvgPicture.asset(MyAssets.images.svg.bill.path)
           ],
         ),
         SizedBox(height: 22.h,),  
        RichText(
  text: TextSpan(
    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.blackColor,fontSize: 24.sp,fontWeight: FontWeight.w500),
    children: [
      const TextSpan(text: "Let’s help you find the perfect "),
      TextSpan(
        text: "job",
        style:  Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primaryColor,fontSize: 24.sp,fontWeight: FontWeight.w700)
      ),
      const TextSpan(text: " or "),
      TextSpan(
        text: "course",
        style:  Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primaryColor,fontSize: 24.sp,fontWeight: FontWeight.w700)
      ),
      const TextSpan(text: ", you deserve!"),
    ],
  ),
)

      ],
    );
  }
}