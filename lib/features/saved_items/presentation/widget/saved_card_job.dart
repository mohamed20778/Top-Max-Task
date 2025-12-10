import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/saved_items/data/models/saved_items_response_model.dart';
import 'package:top_max_task/features/saved_items/presentation/widget/bookmark_button.dart';
import 'package:top_max_task/features/saved_items/presentation/widget/chip.dart';

class SavedJobCard extends StatelessWidget {
  final SavedItemModel item;
  const SavedJobCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Color(0xffE3D7FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(item.status ?? ''),
              ),
              const Spacer(),
              SavedBookmarkButton(
                jobId: item.id,
                initiallySaved: item.isSaved ?? false,
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Text(item.jobTitle ?? item.title ?? '', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20.sp)),
          SizedBox(height: 15.h),
          Text(item.companyName ?? item.provider ?? '', style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10.h),
          Text(item.officeLocation ?? item.location ?? '', style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 15.h),
          Wrap(
            spacing: 8.w,
            runSpacing: 6.h,
            children: [
              ChipSavedItem(text: item.formattedSalary ?? 'Salary'),
              ChipSavedItem(text: item.jobType ?? ''),
              ChipSavedItem(text: item.locationPriority ?? ''),
            ],
          ),
          SizedBox(height: 8.h),
          Text(item.createdAt ?? '', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

class SavedCourseCard extends StatelessWidget {
  final SavedItemModel item;
  const SavedCourseCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(item.type ?? 'Course'),
              ),
              const Spacer(),
              Icon(Icons.bookmark, color: AppColors.primaryColor),
            ],
          ),
          SizedBox(height: 8.h),
          Text(item.title ?? '', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 4.h),
          Text(item.provider ?? '', style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 4.h),
          Text(item.location ?? '', style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 8.h),
          Text(item.createdAt ?? '', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}