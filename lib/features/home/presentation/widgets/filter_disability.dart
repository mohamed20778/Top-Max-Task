import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/presentation/widgets/filter_item.dart';

class FilterDisability extends StatefulWidget {
  const FilterDisability({super.key});

  @override
  State<FilterDisability> createState() => _FilterDisabilityState();
}

class _FilterDisabilityState extends State<FilterDisability> {
  FilterType selected = FilterType.all;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildItem(context, "All", FilterType.all),
        _buildItem(context, "Deaf", FilterType.deaf),
        _buildItem(context, "Blind", FilterType.blind),
      ],
    );
  }

  Widget _buildItem(BuildContext context, String title, FilterType type) {
    final isSelected = selected == type;

    return GestureDetector(
      onTap: () {
        setState(() {
          selected = type;
        });

      
      },
      child: AnimatedContainer(
        width: isSelected ? 56.w : 70.w,
        height: 35.h,
        duration: const Duration(milliseconds: 200),
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
