import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/bookmark_button.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_chip_badge.dart';
import 'package:top_max_task/features/home/presentation/widgets/recent_opening_card.dart';

class FeaturedHorizontal extends StatelessWidget {
  final List<JobItemModel> list;
  final Color backgroundColor;
  const FeaturedHorizontal({super.key, required this.list, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final job = list[index];
          return RecentOpeningCard(job: job, backgroundColor: backgroundColor);
        },
      ),
    );
  }
}
class FeatureCard extends StatelessWidget {
  final JobItemModel job;
  final Color backgroundColor;
  const FeatureCard({super.key, required this.job, required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365.w,
      height: 348.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (job.isUrgent == true)
                    HomeBadge("Urgent", color: Colors.red.shade100),
                  SizedBox(height: 5.h),
                  if (job.isMultipleHires == true)
                    HomeBadge("Hiring Multiple Candidates",
                        color: Colors.green.shade100,
                        textColor: Colors.green.shade800),
                ],
              ),
              BookmarkButton(job: job),
            ],
          ),
          SizedBox(height:20.h),
          Text(
            job.jobTitle ?? '',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500,fontSize: 20.sp),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10.h),
          Text(
            job.jobDescription ?? '',
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(color:AppColors.blackColor,fontSize: 14.sp,fontWeight: FontWeight.w400),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        SizedBox(height:15.h),
          Text(job.companyName ?? '',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.blackColor)),
          SizedBox(height: 15.h),
          Row(
            children: [
              HomeChip(job.formattedSalary ?? 'From AED  / month',width: 169.w,height: 28.h,),
              SizedBox(width: 5.w),
              HomeChip(job.jobType ?? '', filled: false, width: 81.w, height:28.h,),
            ],
          ),
                   SizedBox(height: 5.h),

          HomeChip(job.locationPriority ?? '', filled: false,width: 74.w,height: 28.h,),
        ],
      ),
    );
  }
}

