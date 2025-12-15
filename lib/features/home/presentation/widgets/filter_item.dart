import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
enum FilterType { fulltime, partTime, all,onsite,hyprid,deaf,blind }

class FilterTabs extends StatelessWidget {
  final FilterType value;
  final ValueChanged<FilterType> onChanged;

  const FilterTabs({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final filters = [
      {"title": "All", "type": FilterType.all},
      {"title": "Full Time", "type": FilterType.fulltime},
      {"title": "Part Time", "type": FilterType.partTime},
      {"title": "Onsite", "type": FilterType.onsite},
      {"title": "Hybrid", "type": FilterType.hyprid},
    ];

    return SizedBox(
      height: 35.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          final filter = filters[index];
          return _buildItem(
            context,
            filter["title"]! as String,
            filter["type"]! as FilterType,
          );
        },
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    String title,
    FilterType type,
  ) {
    final isSelected = value == type;

    return GestureDetector(
      onTap: () => onChanged(type),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.greyColor,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: isSelected
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  fontSize: 14.sp,
                ),
          ),
        ),
      ),
    );
  }
}
