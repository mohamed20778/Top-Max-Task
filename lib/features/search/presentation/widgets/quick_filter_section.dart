import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/features/search/presentation/widgets/pill_button.dart';

class QuickFilterSection extends StatelessWidget {
  final ValueChanged<int> onFilterTap;

  const QuickFilterSection({required this.onFilterTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Filter',
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
              text: 'Jobs for People with Blindness',
              onTap: () => onFilterTap(1), // Assuming disability ID 1 for blindness
            ),
            PillButton(
              text: 'Jobs for People with Deafness',
              onTap: () => onFilterTap(2), // Assuming disability ID 2 for deafness
            ),
          ],
        ),
      ],
    );
  }
}