import 'package:top_max_task/features/search/data/models/search_response_model.dart';


abstract class SearchRepo {

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
  });
}

