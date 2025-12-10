import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/common_widgets/custom_button.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/bookmark_button.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_chip_badge.dart';

class LargeCard extends StatelessWidget {
  final JobItemModel job;
  const LargeCard({super.key, required this.job});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFFF7E7F4),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(job.companyName ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.blackColor,fontSize: 15.sp,fontWeight: FontWeight.w600)),
              BookmarkButton(job: job),
            ],
          ),
          SizedBox(height: 8.h),
          Text(job.jobTitle ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          SizedBox(height: 6.h),
          Text(
            job.jobDescription ?? '',
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(color:AppColors.blackColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10.h),
          Wrap(
            spacing: 8.w,
            children: [
              HomeChip(job.formattedSalary ?? 'From AED  / month'),
              HomeChip(job.jobType ?? '', filled: false),
              HomeChip(job.locationPriority ?? '', filled: false),
            ],
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.centerRight,
            child: CustomButton(
              width: 80.w,
              height: 32.h,
              radius: 16.r,
              text: "Details",
              backgroundColor: Colors.white,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.primaryColor,fontWeight: FontWeight.w700),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
