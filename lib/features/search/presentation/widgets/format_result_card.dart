import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/search/data/models/search_response_model.dart';
import 'package:top_max_task/features/search/presentation/screens/search_screen.dart';
import 'package:top_max_task/features/search/presentation/widgets/bookmark_button.dart';

class JobResultCard extends StatelessWidget {
  final SearchJobItemModel job;

  const JobResultCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 261.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color:AppColors.primaryLightColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (job.status != null)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: Color(0xffE3D7FF),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    job.status ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.blackColor,),
                  ),
                ),
              const Spacer(),
              BookmarkButton(job: job),
            ],
          ),
          SizedBox(height: 15.h),
          Text(
            job.jobTitle ?? 'No Title',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
          ),
          
          SizedBox(height: 8.h),
          Text(
            job.jobDescription ?? '',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.blackColor,
                ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              if (job.applicationsCount != null)
                Text(
                  '${job.applicationsCount} applications',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.blackColor,
                      ),
                ),
              const Spacer(),
              if (job.createdAt != null)
                Text(
                  formatDate(job.createdAt),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.blackColor,
                      ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}