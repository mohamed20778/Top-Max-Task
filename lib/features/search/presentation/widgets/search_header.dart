import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_cubit.dart';
import 'package:top_max_task/features/search/presentation/widgets/job_type_dropdown.dart';

class SearchHeader extends StatefulWidget {
  final TextEditingController searchController;
  final String? selectedJobType;
  final ValueChanged<String?> onJobTypeChanged;

  const SearchHeader({super.key, 
    required this.searchController,
    required this.selectedJobType,
    required this.onJobTypeChanged,
  });

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  @override
  void initState() {
    super.initState();
    widget.searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    widget.searchController.removeListener(_onSearchChanged);
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {});
    context.read<SearchCubit>().onKeywordChanged(
          keyword: widget.searchController.text,
          jobType: widget.selectedJobType,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryColor.withOpacity(0.1),
            Colors.white,
          ],
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: widget.searchController,
                decoration: InputDecoration(
                  hintText: 'Search for jobs and courses',
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search, color: AppColors.greyColor),
                  suffixIcon: widget.searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear, color: AppColors.greyColor),
                          onPressed: () {
                            widget.searchController.clear();
                            // Reset to initial state to show popular searches and filters again
                            context.read<SearchCubit>().resetSearch();
                          },
                        )
                      : null,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                ),
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    context.read<SearchCubit>().searchJobs(
                          keyword: value.trim(),
                          jobType: widget.selectedJobType,
                        );
                  }
                },
              ),
            ),
            Container(
              height: 32.h,
              width: 1,
              color: Colors.grey.shade300,
            ),
            JobTypeDropdown(
              selectedValue: widget.selectedJobType,
              onChanged: (value) {
                widget.onJobTypeChanged(value);
                context.read<SearchCubit>().onKeywordChanged(
                      keyword: widget.searchController.text,
                      jobType: value,
                    );
              },
            ),
    
          ],
        ),
      ),
    );
  }
}