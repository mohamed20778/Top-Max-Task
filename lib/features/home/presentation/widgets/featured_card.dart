import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/bookmark_button.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_chip_badge.dart';

class FeaturedHorizontal extends StatelessWidget {
  final List<JobItemModel> list;
  const FeaturedHorizontal({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final job = list[index];
          return FeatureCard(job: job);
        },
      ),
    );
  }
}
class FeatureCard extends StatelessWidget {
  final JobItemModel job;
  const FeatureCard({super.key, required this.job});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
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
                  SizedBox(height: 3.h),
                  if (job.isMultipleHires == true)
                    HomeBadge("Hiring Multiple Candidates",
                        color: Colors.green.shade100,
                        textColor: Colors.green.shade800),
                ],
              ),
              BookmarkButton(job: job),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            job.jobTitle ?? '',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600,fontSize: 20.sp),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h),
          Text(
            job.jobDescription ?? '',
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(color:AppColors.blackColor,fontSize: 10.sp),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        SizedBox(height: 6.h),
          Text(job.companyName ?? '',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.blackColor)),
          SizedBox(height: 6.h),
          Row(
            children: [
              HomeChip(job.formattedSalary ?? 'From AED  / month'),
              SizedBox(width: 6.w),
              HomeChip(job.jobType ?? '', filled: false),
            ],
          ),
         
          HomeChip(job.locationPriority ?? '', filled: false),
        ],
      ),
    );
  }
}

