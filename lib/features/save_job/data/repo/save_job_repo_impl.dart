import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/save_job/data/data_source/save_job_remote_datasource.dart';
import 'package:top_max_task/features/save_job/data/models/save_job_response_model.dart';
import 'package:top_max_task/features/save_job/data/repo/save_job_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: SaveJobRepo)
class SaveJobRepoImpl implements SaveJobRepo {
  final dataSource = di<SaveJobRemoteDataSource>();

  @override
  Future<SaveJobResponseModel> toggleSave({required int jobId}) async {
    try {
      return await dataSource.toggleSave(jobId: jobId);
    } catch (e) {
      AppLogger().error("toggleSave error${e.toString()}");
      rethrow;
    }
  }
}

