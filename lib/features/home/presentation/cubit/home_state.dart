import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/presentation/widgets/filter_item.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final HomeResponseModel data;
  final List<JobItemModel> filteredOpeningRecent;
  final FilterType selectedFilter;

  HomeSuccess({
    required this.data,
    required this.filteredOpeningRecent,
    required this.selectedFilter,
  });
}
final class HomeFailed extends HomeState {
  final String message;
  HomeFailed(this.message);
}

