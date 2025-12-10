import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/search/data/data_source/search_remote_datasource.dart';
import 'package:top_max_task/features/search/data/models/search_response_model.dart';
import 'package:top_max_task/features/search/data/repo/search_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';


@LazySingleton(as: SearchRepo)
class SearchRepoImpl implements SearchRepo {
  final dataSource = di<SearchRemoteDataSource>();

  @override
  Future<SearchResponseModel> searchJobs({
    String? keyword,
    String? location,
    int? salaryMin,
    int? salaryMax,
    String? experience,
    String? jobType,
    String? locationType,
    int? disability,
    int? page,
  }) async {
    try {
      final response = await dataSource.searchJobs(
        keyword: keyword,
        location: location,
        salaryMin: salaryMin,
        salaryMax: salaryMax,
        experience: experience,
        jobType: jobType,
        locationType: locationType,
        disability: disability,
        page: page,
      );
      return response;
    } catch (e) {
      AppLogger().error("searchJobs error: ${e.toString()}");
      throw Exception('Failed to search jobs: ${e.toString()}');
    }
  }
}

