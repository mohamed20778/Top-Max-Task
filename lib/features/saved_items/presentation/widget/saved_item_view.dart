import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/common_widgets/my_toast.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_state.dart';
import 'package:top_max_task/features/saved_items/data/models/saved_items_response_model.dart';
import 'package:top_max_task/features/saved_items/presentation/cubit/saved_items_cubit.dart';
import 'package:top_max_task/features/saved_items/presentation/cubit/saved_items_state.dart';
import 'package:top_max_task/features/saved_items/presentation/widget/saved_card_job.dart';
import 'package:top_max_task/features/saved_items/presentation/widget/type_chip.dart';


class SavedItemsView extends StatefulWidget {
  const SavedItemsView({super.key});

  @override
  State<SavedItemsView> createState() => _SavedItemsViewState();
}

class _SavedItemsViewState extends State<SavedItemsView> {
  String _type = 'jobs';

  @override
  Widget build(BuildContext context) {
    final cubit=context.read<SavedItemsCubit>();
    return BlocListener<SaveJobCubit, SaveJobState>(
      listenWhen: (prev, curr) => curr is SaveJobSuccess || curr is SaveJobFailed,
      listener: (context, state) {
        if (state is SaveJobSuccess) {
          final isSaved = state.data.data?.isInWishlist ?? false;
          showToast(
            message: isSaved ? 'Saved to wishlist' : 'Removed from wishlist',
            isError: false,
          );
          context.read<SavedItemsCubit>().getSavedItems(_type);
        } else if (state is SaveJobFailed) {
          showToast(message: state.message, isError: true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Bookmarks',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: ()=>cubit.getSavedItems(_type),
          color: AppColors.primaryColor,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TypeChip(
                      isCourse: false,
                      label: 'Saved Jobs',
                      selected: _type == 'jobs',
                      onTap: () {
                        setState(() => _type = 'jobs');
                        context.read<SavedItemsCubit>().getSavedItems('jobs');
                      },
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded( 
                    child: TypeChip(
                      isCourse: true,
                      label: 'Saved Courses',
                      selected: _type == 'courses',
                      onTap: () {
                        setState(() => _type = 'courses');
                        context.read<SavedItemsCubit>().getSavedItems('courses');
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: BlocBuilder<SavedItemsCubit, SavedItemsState>(
                  builder: (context, state) {
                    if (state is SavedItemsLoading) {
                      return const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,));
                    }
                    if (state is SavedItemsError) {
                      return Center(child: Text("SomeThing went Wrong"));
                    }
                    if (state is SavedItemsSuccess) {
                      if (state.items.isEmpty) {
                        return const Center(child: Text('No saved items'));
                      }
                      return ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                        itemCount: state.items.length,
                        separatorBuilder: (_, __) => SizedBox(height: 12.h),
                        itemBuilder: (context, index) {
                          final item = state.items[index] as SavedItemModel;
                          final type = item.type ?? _type;
                          if (type == 'courses') {
                            return SavedCourseCard(item: item);
                          }
                          return SavedJobCard(item: item);
                        },
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
