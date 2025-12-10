import 'package:top_max_task/features/home/data/models/home_response_model.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final HomeResponseModel data;
  final String filterQuery;
  HomeSuccess(this.data, {this.filterQuery = ''});
}

final class HomeFailed extends HomeState {
  final String message;
  HomeFailed(this.message);
}

