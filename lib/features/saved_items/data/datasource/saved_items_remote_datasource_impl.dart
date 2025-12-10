import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/saved_items/data/datasource/saved_items_remote_datasource.dart';
import 'package:top_max_task/features/saved_items/data/models/saved_items_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: SavedItemsRemoteDataSource)
class SavedItemsRemoteDataSourceImpl implements SavedItemsRemoteDataSource {
  final DioConsumer client;
  SavedItemsRemoteDataSourceImpl(this.client);

  @override
  Future<SavedItemsResponseModel> getSavedItems(String type) async {
    try {
      final prefs=di<SharedPreferences>();
      final token=prefs.get("token");
      final response = await client.get(
        path: AppApi.savedItems,
        queryParameters: {'type': type},
        headers: {
          "Authorization": "Bearer $token",
        }
      );

      if (response is Map<String, dynamic>) {
        return SavedItemsResponseModel.fromJson(response);
      }
      if (response is Map) {
        return SavedItemsResponseModel.fromJson(Map<String, dynamic>.from(response));
      }
      throw const FormatException('Unexpected response shape for saved items');
    } catch (e) {
      AppLogger().error('getSavedItems error: $e');
      rethrow;
    }
  }
}

