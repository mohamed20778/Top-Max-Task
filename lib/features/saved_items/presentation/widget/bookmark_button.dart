import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_state.dart';

class SavedBookmarkButton extends StatelessWidget {
  final int? jobId;
  final bool initiallySaved;

  const SavedBookmarkButton({super.key, 
    required this.jobId,
    required this.initiallySaved,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaveJobCubit, SaveJobState>(
      buildWhen: (prev, curr) {
        if (jobId == null) return false;
        if (curr is SaveJobLoading || curr is SaveJobSuccess || curr is SaveJobFailed) {
          return (curr as dynamic).jobId == jobId;
        }
        return false;
      },
      builder: (context, state) {
        if (jobId == null) {
          return const Icon(Icons.bookmark_border, color: AppColors.greyColor);
        }

        final isLoading = state is SaveJobLoading && state.jobId == jobId;
        bool isSaved = initiallySaved;
        if (state is SaveJobSuccess && state.jobId == jobId) {
          isSaved = state.data.data?.isInWishlist ?? isSaved;
        }

        return IconButton(
          icon: isLoading
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Icon(
                  isSaved ? Icons.bookmark : Icons.bookmark_border,
                  color: isSaved ? AppColors.primaryColor : AppColors.greyColor,
                ),
          onPressed: isLoading
              ? null
              : () {
                  context.read<SaveJobCubit>().toggleSave(jobId!);
                },
        );
      },
    );
  }
}