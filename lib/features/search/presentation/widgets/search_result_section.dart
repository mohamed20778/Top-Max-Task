import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/common_widgets/empty_state.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_cubit.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_state.dart';
import 'package:top_max_task/features/search/presentation/widgets/format_result_card.dart';

class SearchResultsSection extends StatelessWidget {
  final TextEditingController searchController;
  final String? selectedJobType;

  const SearchResultsSection({super.key, 
    required this.searchController,
    required this.selectedJobType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return const SizedBox.shrink(); 
        }

        if (state is SearchLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: CircularProgressIndicator(color: AppColors.primaryColor),
            ),
          );
        }

        if (state is SearchFailed) {
          return EmptyState(
            message: state.message,
            icon: Icons.error_outline,
          );
        }

        if (state is SearchSuccess) {
          if (state.jobs.isEmpty) {
            return EmptyState(
              message: 'No jobs found. Try different search terms.',
              icon: Icons.search_off,
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.jobs.length,
                separatorBuilder: (context, index) => SizedBox(height: 12.h),
                itemBuilder: (context, index) {
                  final job = state.jobs[index];
                  return JobResultCard(job: job);
                },
              ),
              if (state.pagination.hasMorePages == true) ...[
                SizedBox(height: 16.h),
                Center(
                  child: TextButton(
                    onPressed: () {
                      context.read<SearchCubit>().loadMoreJobs(
                            keyword: searchController.text.trim().isEmpty
                                ? null
                                : searchController.text.trim(),
                            jobType: selectedJobType,
                          );
                    },
                    child: const Text('Load More'),
                  ),
                ),
              ],
            ],
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
