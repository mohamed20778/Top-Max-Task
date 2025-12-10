import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/features/search/data/data_source/search_remote_datasource.dart';
import 'package:top_max_task/features/search/data/models/search_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';


@LazySingleton(as: SearchRemoteDataSource)
class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final DioConsumer client;
  SearchRemoteDataSourceImpl(this.client);

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
      final queryParams = {
  if (keyword?.isNotEmpty == true) 'keyword': keyword,
  if (location?.isNotEmpty == true) 'location': location,
  if (salaryMin != null) 'salary_min': salaryMin,
  if (salaryMax != null) 'salary_max': salaryMax,
  if (experience?.isNotEmpty == true) 'experience': experience,
  if (jobType?.isNotEmpty == true) 'job_type': jobType,
  if (locationType?.isNotEmpty == true) 'location_type': locationType,
  if (disability != null) 'disability': disability,
  if (page != null) 'page': page,
};


      final response = await client.get(
        path: AppApi.searchJobs,
        queryParameters: queryParams,
      );

      AppLogger().info("searchJobs response: $response");

      if (response is Map<String, dynamic>) {
        return SearchResponseModel.fromJson(response);
      }
      if (response is Map) {
        return SearchResponseModel.fromJson(
          Map<String, dynamic>.from(response),
        );
      }

      throw const FormatException('Unexpected response shape for search jobs');
    } catch (e) {
      AppLogger().error("searchJobs error: $e");
      rethrow;
    }
  }
}

