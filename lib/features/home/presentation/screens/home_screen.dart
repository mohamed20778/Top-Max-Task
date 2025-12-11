import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_cubit.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_state.dart';
import 'package:top_max_task/features/home/presentation/widgets/home_content.dart';

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




















