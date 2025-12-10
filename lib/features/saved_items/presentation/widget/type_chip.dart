import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class TypeChip extends StatelessWidget {
  final String label;
  final bool selected;
  final bool isCourse;
  final VoidCallback onTap;
  const TypeChip({super.key, required this.label, required this.selected, required this.onTap, required this.isCourse, });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected?AppColors.primaryColor:AppColors.whiteColor
      ),
      child: ChoiceChip(
      side: BorderSide(color: Colors.transparent),
      showCheckmark: false,
       avatar:isCourse?SvgPicture.asset(MyAssets.images.svg.savedCourse.path):SvgPicture.asset(MyAssets.images.svg.bookmarkColored.path),
        selectedColor:AppColors.primaryColor ,
        labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color:selected? AppColors.whiteColor:AppColors.primaryColor,fontWeight: FontWeight.w600),
        label: Text(label),
        selected: selected,
        onSelected: (_) => onTap(),
      ),
    );
  }
}