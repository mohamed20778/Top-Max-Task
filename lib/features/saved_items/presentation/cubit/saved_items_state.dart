import 'package:top_max_task/features/saved_items/data/models/saved_items_response_model.dart';

sealed class SavedItemsState {}

class SavedItemsInitial extends SavedItemsState {}

class SavedItemsLoading extends SavedItemsState {}

class SavedItemsSuccess extends SavedItemsState {
  final List<dynamic> items; // JobItemModel or SavedCourseModel
  final SavedPaginationModel? pagination;

  SavedItemsSuccess({required this.items, required this.pagination});
}

class SavedItemsError extends SavedItemsState {
  final String message;
  SavedItemsError(this.message);
}

