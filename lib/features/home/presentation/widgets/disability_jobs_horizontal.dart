import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/featured_card.dart';

class DisabilityJobsHorizontal extends StatelessWidget {
  final List<JobItemModel> list;
  final Color backgroundColor;
  const DisabilityJobsHorizontal({super.key, required this.list, required this.backgroundColor});

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
          return FeatureCard(job: job, backgroundColor: backgroundColor);
        },
      ),
    );
  }
}

