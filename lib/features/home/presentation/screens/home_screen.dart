import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/common_widgets/custom_button.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_cubit.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_state.dart';
import 'package:top_max_task/features/home/presentation/widgets/bookmark_button.dart';
import 'package:top_max_task/features/home/presentation/widgets/featured_card.dart';
import 'package:top_max_task/features/home/presentation/widgets/header.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_chip_badge.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_content.dart';
import 'package:top_max_task/features/home/presentation/widgets/job_tile.dart';
import 'package:top_max_task/features/home/presentation/widgets/section_tile.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_state.dart';
import 'package:top_max_task/core/common_widgets/my_toast.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().loadHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is HomeFailed) {
              return Center(child: Text(state.message));
            }
            if (state is HomeSuccess) {
              return HomeContent(data: state.data);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}




















