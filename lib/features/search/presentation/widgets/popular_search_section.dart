import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/features/search/presentation/widgets/pill_button.dart';

class PopularSearchesSection extends StatelessWidget {
  final ValueChanged<String> onSearchTap;

  const PopularSearchesSection({super.key, required this.onSearchTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Searches',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
        ),
        SizedBox(height: 12.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: [
            PillButton(
              text: 'Secretary',
              onTap: () => onSearchTap('Secretary'),
            ),
            PillButton(
              text: 'Web Developer',
              onTap: () => onSearchTap('Web Developer'),
            ),
            PillButton(
             text: 'Entry-Level Data Entry',
              onTap: () => onSearchTap('Entry-Level Data Entry'),
            ),
            PillButton(
              text: 'Artificial Intelligence',
              onTap: () => onSearchTap('Artificial Intelligence'),
            ),
            PillButton(
              text: 'Sign Language Supported Courses',
              onTap: () => onSearchTap('Graphic Designer'),
            ),
            PillButton(
              text: 'Urgent Hiring',
              onTap: () => onSearchTap('Urgent Hiring'),
            ),
          ],
        ),
      ],
    );
  }
}