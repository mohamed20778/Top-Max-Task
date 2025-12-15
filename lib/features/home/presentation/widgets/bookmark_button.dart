import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/core/common_widgets/my_toast.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_state.dart';

class BookmarkButton extends StatefulWidget {
  final JobItemModel job;
  const BookmarkButton({super.key, required this.job});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  late bool _isSaved = widget.job.isSaved == true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SaveJobCubit, SaveJobState>(
      listenWhen: (prev, curr) =>
          (curr is SaveJobSuccess || curr is SaveJobFailed) &&
          (curr as dynamic).jobId == widget.job.id,
      listener: (context, state) {
        if (state is SaveJobSuccess && state.jobId == widget.job.id) {
          final saved = state.data.data?.isInWishlist;
          setState(() {
            _isSaved = saved ?? !_isSaved; 
          });
          showToast(
            message: state.data.message ?? 'Wishlist updated',
            isError: false,
          );
        } else if (state is SaveJobFailed && state.jobId == widget.job.id) {
          showToast(message: state.message, isError: true);
        }
      },
      buildWhen: (prev, curr) {
        if (curr is SaveJobLoading ||
            curr is SaveJobSuccess ||
            curr is SaveJobFailed) {
          return (curr as dynamic).jobId == widget.job.id;
        }
        return false;
      },
      builder: (context, state) {
        bool isSaved = _isSaved;
        if (state is SaveJobSuccess && state.jobId == widget.job.id) {
          isSaved = state.data.data?.isInWishlist ?? isSaved;
        }
        final loading = state is SaveJobLoading && state.jobId == widget.job.id;

        return IconButton(
          icon: loading
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Icon(
                  isSaved ? Icons.bookmark : Icons.bookmark_outline,
                  color: isSaved ? AppColors.primaryColor : Colors.grey,
                ),
          onPressed: loading || widget.job.id == null
              ? null
              : () => context.read<SaveJobCubit>().toggleSave(widget.job.id!),
        );
      },
    );
  }
}