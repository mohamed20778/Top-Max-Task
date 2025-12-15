import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_cubit.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_state.dart';
import 'package:top_max_task/features/home/presentation/widgets/disability_jobs_horizontal.dart';
import 'package:top_max_task/features/home/presentation/widgets/featured_card.dart';
import 'package:top_max_task/features/home/presentation/widgets/filter_disability.dart';
import 'package:top_max_task/features/home/presentation/widgets/filter_item.dart';
import 'package:top_max_task/features/home/presentation/widgets/header.dart';
import 'package:top_max_task/features/home/presentation/widgets/job_tile.dart';
import 'package:top_max_task/features/home/presentation/widgets/section_tile.dart';

class HomeContent extends StatelessWidget {
  final HomeResponseModel data;
  const HomeContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is! HomeSuccess) {
          return const SizedBox.shrink();
        }

        final home = state.data.data;

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 20.h),

              if ((home?.disabilityJobs ?? []).isNotEmpty) ...[
                SectionTitle("Jobs for Special Abilities", action: "See More"),
                SizedBox(height: 20.h),
                FilterDisability(),
                SizedBox(height: 20.h),
                DisabilityJobsHorizontal(
                  list: home!.disabilityJobs!,
                  backgroundColor: AppColors.primaryLightColor,
                ),
                SizedBox(height: 16.h),
              ],

              SectionTitle("Featured Jobs", action: "See More"),
              SizedBox(height: 20.h),
              if ((home?.featuredJobs ?? []).isNotEmpty)
                FeaturedHorizontal(
                  list: home!.featuredJobs!,
                  backgroundColor: Color(0xffBB5CA0).withOpacity(0.1),
                ),

              SizedBox(height: 12.h),
              SectionTitle("Recent Openings", action: "See More"),
              SizedBox(height: 20.h),
              FilterTabs(
                value: state.selectedFilter,
                onChanged: (filter) {
                  context.read<HomeCubit>().filterrecentOpeningsJobs(filter);
                },
              ),
              SizedBox(height: 20.h),
              ...state.filteredOpeningRecent.map(
                (job) => Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: JobTile(job: job),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
