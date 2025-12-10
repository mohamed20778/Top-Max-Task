import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/saved_items/data/datasource/saved_items_remote_datasource.dart';
import 'package:top_max_task/features/saved_items/data/models/saved_items_response_model.dart';
import 'package:top_max_task/features/saved_items/data/repository/saved_items_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: SavedItemsRepo)
class SavedItemsRepoImpl implements SavedItemsRepo {
  final SavedItemsRemoteDataSource remote = di<SavedItemsRemoteDataSource>();

  @override
  Future<SavedItemsResponseModel> getSavedItems(String type) async {
    try {
      return await remote.getSavedItems(type);
    } catch (e) {
      AppLogger().error('SavedItemsRepoImpl error: $e');
      throw Exception('Failed to load saved items: $e');
    }
  }
}

