import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_cubit.dart';

class JobTypeDropdown extends StatelessWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const JobTypeDropdown({super.key, 
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: selectedValue,
      onSelected: (value) {
        onChanged(value == 'All' ? null : value);
        if (value != 'All') {
          context.read<SearchCubit>().searchJobs(jobType: value);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              selectedValue ?? 'job type',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(width: 4.w),
            const Icon(Icons.keyboard_arrow_down, size: 20),
          ],
        ),
      ),
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'All', child: Text('All')),
        const PopupMenuItem(value: 'full-time', child: Text('Full Time')),
        const PopupMenuItem(value: 'part-time', child: Text('Part Time')),
        const PopupMenuItem(value: 'contract', child: Text('Contract')),
      ],
    );
  }
}