import 'package:top_max_task/features/search/data/models/search_response_model.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<SearchJobItemModel> jobs;
  final PaginationModel pagination;

  SearchSuccess({
    required this.jobs,
    required this.pagination,
  });
}

final class SearchFailed extends SearchState {
  final String message;

  SearchFailed({required this.message});
}

