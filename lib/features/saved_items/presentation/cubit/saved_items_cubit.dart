import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/features/saved_items/data/repository/saved_items_repo.dart';
import 'package:top_max_task/features/saved_items/presentation/cubit/saved_items_state.dart';

class SavedItemsCubit extends Cubit<SavedItemsState> {
  SavedItemsCubit({required this.repo}) : super(SavedItemsInitial());

  final SavedItemsRepo repo;

  Future<void> getSavedItems(String type) async {
    emit(SavedItemsLoading());
    try {
      final response = await repo.getSavedItems(type);
      final items = response.data?.items ?? [];
      final pagination = response.data?.pagination;
      emit(SavedItemsSuccess(items: items, pagination: pagination));
    } catch (e) {
      emit(SavedItemsError(e.toString()));
    }
  }
}

