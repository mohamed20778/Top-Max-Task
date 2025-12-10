import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/save_job/data/data_source/save_job_remote_datasource.dart';
import 'package:top_max_task/features/save_job/data/models/save_job_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: SaveJobRemoteDataSource)
class SaveJobRemoteDataSourceImpl implements SaveJobRemoteDataSource {
  final DioConsumer client;
  SaveJobRemoteDataSourceImpl(this.client);

  @override
  Future<SaveJobResponseModel> toggleSave({required int jobId}) async {
    try {
      final prefs=di<SharedPreferences>();
      final token=prefs.get("token");
      final response = await client.post(path: AppApi.toggleSaveJob(jobId),headers: {
          "Authorization": "Bearer $token",
      });
      AppLogger().info("saveJob$response");
      if (response is Map<String, dynamic>) {
        return SaveJobResponseModel.fromJson(response);
      }
      if (response is Map) {
        return SaveJobResponseModel.fromJson(
            Map<String, dynamic>.from(response));
      }
      throw const FormatException('Unexpected response shape for save job');
    } catch (e) {
      AppLogger().error("saveJob error$e");
      rethrow;
    }
  }
}

