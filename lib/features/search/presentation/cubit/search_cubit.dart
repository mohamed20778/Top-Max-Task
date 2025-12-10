import 'package:bloc/bloc.dart';
import 'package:top_max_task/features/search/data/repo/search_repo.dart';
import 'package:top_max_task/features/search/presentation/cubit/search_state.dart';


class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  SearchCubit({required this.searchRepo}) : super(SearchInitial());


  void resetSearch() {
    emit(SearchInitial());
  }


  Future<void> searchJobs({
    String? keyword,
    String? location,
    int? salaryMin,
    int? salaryMax,
    String? experience,
    String? jobType,
    String? locationType,
    int? disability,
  }) async {
    emit(SearchLoading());
    try {
      final response = await searchRepo.searchJobs(
        keyword: keyword,
        location: location,
        salaryMin: salaryMin,
        salaryMax: salaryMax,
        experience: experience,
        jobType: jobType,
        locationType: locationType,
        disability: disability,
        page: 1,
      );

      final jobs = response.data?.jobs ?? [];
      final pagination = response.data?.pagination;

      if (pagination == null) {
        emit(SearchFailed(message: 'Invalid response: missing pagination'));
        return;
      }

      emit(SearchSuccess(jobs: jobs, pagination: pagination));
    } catch (e) {
      emit(SearchFailed(message: e.toString()));
    }
  }


  Future<void> loadMoreJobs({
    String? keyword,
    String? location,
    int? salaryMin,
    int? salaryMax,
    String? experience,
    String? jobType,
    String? locationType,
    int? disability,
  }) async {
    final currentState = state;
    if (currentState is! SearchSuccess) {
      return;
    }

    final currentPage = currentState.pagination.currentPage ?? 1;
    final hasMore = currentState.pagination.hasMorePages ?? false;

    if (!hasMore) {
      return; 
    }

    try {
      final response = await searchRepo.searchJobs(
        keyword: keyword,
        location: location,
        salaryMin: salaryMin,
        salaryMax: salaryMax,
        experience: experience,
        jobType: jobType,
        locationType: locationType,
        disability: disability,
        page: currentPage + 1,
      );

      final newJobs = response.data?.jobs ?? [];
      final newPagination = response.data?.pagination;

      if (newPagination == null) {
        return; // Invalid response, keep current state
      }

      // Append new jobs to existing list
      final updatedJobs = [...currentState.jobs, ...newJobs];

      emit(SearchSuccess(jobs: updatedJobs, pagination: newPagination));
    } catch (e) {
      // On error, keep current state (don't emit error to avoid losing current results)
      // You can optionally emit a partial error state here
    }
  }
}

