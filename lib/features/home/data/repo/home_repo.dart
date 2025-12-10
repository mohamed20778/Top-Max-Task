import 'package:top_max_task/features/home/data/models/home_response_model.dart';

abstract class HomeRepo {
  Future<HomeResponseModel> fetchHome();
}

