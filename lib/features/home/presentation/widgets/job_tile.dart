import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/bookmark_button.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_chip_badge.dart';

class JobTile extends StatelessWidget {
  final JobItemModel job;
  const JobTile({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.primaryLightColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  spacing: 6.w,
                  runSpacing: 6.h,
                  children: [
                    if (job.isUrgent == true)
                      HomeBadge("Urgent",
                          color: Colors.red.shade100, textColor: Colors.red),
                    if (job.isMultipleHires == true)
                      HomeBadge("Hiring Multiple Candidates",
                          color: Colors.green.shade100,
                          textColor: Colors.green.shade800),
                    if (job.isFeatured == true)
                      HomeBadge("Featured", color: Colors.blue.shade100),
                  ],
                ),
                BookmarkButton(job: job),
              ],
            ),
          SizedBox(height: 15.h),
          Text(
            job.jobTitle ?? '',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w700,fontSize: 20.sp),
          ),
          SizedBox(height: 15.h),
          Text(
            job.companyName ?? '',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.blackColor),
          ),
          SizedBox(height: 15.h),
          Wrap(
            spacing: 8.w,
            runSpacing: 6.h,
            children: [
                  HomeChip(job.formattedSalary ?? 'From AED  / month',width: 169.w,height: 28.h,),
              HomeChip(job.jobType ?? '', filled: false, width: 81.w, height: 28.h,),
              HomeChip(job.locationPriority ?? '', filled: false, width: 74.w, height: 28.h,),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            job.activeSince ?? '',
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.blackColor),
          ),
        ],
      ),
    );
  }
}