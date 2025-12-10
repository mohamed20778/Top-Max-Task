import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/search/data/repo/search_repo.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_cubit.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_state.dart';
import 'package:top_max_task/features/save_job/presentation/cubit/save_job_cubit.dart';
import 'package:top_max_task/features/save_job/data/repo/save_job_repo.dart';
import 'package:top_max_task/features/search/presentation/widgets/popular_search_section.dart';
import 'package:top_max_task/features/search/presentation/widgets/quick_filter_section.dart';
import 'package:top_max_task/features/search/presentation/widgets/search_header.dart';
import 'package:top_max_task/features/search/presentation/widgets/search_result_section.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String? _selectedJobType;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchCubit(searchRepo: di<SearchRepo>()),
        ),
        BlocProvider(
          create: (context) => SaveJobCubit(saveJobRepo: di<SaveJobRepo>()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SearchHeader(
                searchController: _searchController,
                selectedJobType: _selectedJobType,
                onJobTypeChanged: (value) {
                  setState(() {
                    _selectedJobType = value;
                  });
                },
              ),
              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    final hasSearched = state is! SearchInitial;
                    
                    return SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (!hasSearched) ...[
                            PopularSearchesSection(
                              onSearchTap: (keyword) {
                                _searchController.text = keyword;
                                context.read<SearchCubit>().searchJobs(keyword: keyword);
                              },
                            ),
                            SizedBox(height: 24.h),
                            QuickFilterSection(
                              onFilterTap: (disabilityId) {
                                context.read<SearchCubit>().searchJobs(disability: disabilityId);
                              },
                            ),
                            SizedBox(height: 24.h),
                          ],
                          SearchResultsSection(
                            searchController: _searchController,
                            selectedJobType: _selectedJobType,
                          ),
                        ],
                      ),
                    );
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



String formatDate(String? dateString) {
  if (dateString == null) return '';
  try {
    final date = DateTime.parse(dateString);
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return 'Today';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  } catch (e) {
    return dateString;
  }
}



