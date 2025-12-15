import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:top_max_task/features/save_job/data/repo/save_job_repo.dart';
import 'package:top_max_task/features/saved_items/data/repository/saved_items_repo.dart';
import 'package:top_max_task/features/saved_items/presentation/cubit/saved_items_cubit.dart';
import 'package:top_max_task/features/saved_items/presentation/widget/saved_item_view.dart';

class SavedItemScreen extends StatelessWidget {
    final String title;

  const SavedItemScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SavedItemsCubit(repo: di<SavedItemsRepo>())..getSavedItems('jobs'),
        ),
        BlocProvider(
          create: (_) => SaveJobCubit(saveJobRepo: di<SaveJobRepo>()),
        ),
      ],
      child: 
        
        const SavedItemsView());
  
  }
}










