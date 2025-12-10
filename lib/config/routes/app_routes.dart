import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:top_max_task/config/routes/routes_name.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/generate_otp/presentation/screens/generate_otp_screen.dart';
import 'package:top_max_task/features/auth/verify_otp/presentation/screens/verify_otp_screen.dart';
import 'package:top_max_task/features/home/presentation/cubit/home_cubit.dart';
import 'package:top_max_task/features/home/presentation/screens/home_screen.dart';
import 'package:top_max_task/features/home/presentation/screens/home_shell.dart';
import 'package:top_max_task/features/home/presentation/screens/placeholder_screen.dart';
import 'package:top_max_task/features/saved_items/presentation/screens/saved_item_screen.dart';
import 'package:top_max_task/features/search/presentation/screens/search_screen.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/data/repo/home_repo.dart';
import '../../features/save_job/data/repo/save_job_repo.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

final routes = GoRouter(
  navigatorKey: navigationKey,
  initialLocation: AppRoutes.generateOtp,
  routes: [
    GoRoute(
      path: AppRoutes.generateOtp,
      builder: (context, state) => const GenerateOtpScreen(),
    ),
    GoRoute(
      path: AppRoutes.verifyOtp,
      builder: (context, state) =>
          VerifyOtpScreen(phone: state.extra as String?),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          HomeShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.homeShell,
              builder: (context, state) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (_) => HomeCubit(homeRepo: di<HomeRepo>()),
                  ),
                  BlocProvider(
                    create: (_) => SaveJobCubit(saveJobRepo: di<SaveJobRepo>()),
                  ),
                ],
                child: const HomeScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.explore,
              builder: (context, state) => const SearchScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.postJob,
              builder: (context, state) =>
                  const PlaceholderTabScreen(title: 'Post Job'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.bookmarks,
              builder: (context, state) =>
                  const SavedItemScreen(title: 'Bookmarks'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.more,
              builder: (context, state) =>
                  const PlaceholderTabScreen(title: 'More'),
            ),
          ],
        ),
      ],
    ),
  ],
);
