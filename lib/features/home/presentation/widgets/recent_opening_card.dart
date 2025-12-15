import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/bookmark_button.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_chip_badge.dart';


class RecentOpeningHorizontal extends StatelessWidget {
  final List<JobItemModel> list;
  final Color backgroundColor;
  const RecentOpeningHorizontal({super.key, required this.list, required this.backgroundColor});

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
class RecentOpeningCard extends StatelessWidget {
  final JobItemModel job;
  final Color backgroundColor;
  const RecentOpeningCard({super.key, required this.job, required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365.w,
      height: 315.h,
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:AppColors.greyColor.withOpacity(0.4) )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 345.w,
            height: 247.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
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
                        SizedBox(height: 20.h,),
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
                SizedBox(height: 20.h),
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
              SizedBox(height: 10.h),
                Text(job.companyName ?? '',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.blackColor)),
                SizedBox(height: 14.h),
                Row(
                  children: [
                 
                    JobTypeChip(job.jobType ?? '', filled: false,width: 92.h,height: 28.h,),
                    SizedBox(width: 5.w,),
                    LocationChip(job.locationPriority ?? '', filled: false,width: 92.h,height: 28.h,),
                  ],
                ),
               
                
              ],
              
            ),
          ),
          SizedBox(height: 16.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             InkWell(
              onTap: (){},
              child: Text(job.formattedSalary!,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w700),)),
             HomeChip("Details", width: 76.w, height: 30.h)
           ],
         )

        ],
      ),
    );
  }
}

