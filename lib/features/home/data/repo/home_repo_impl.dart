import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/home/data/data_source/home_remote_datasource.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/data/repo/home_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final _dataSource = di<HomeRemoteDataSource>();

  @override
  Future<HomeResponseModel> fetchHome() async {
    try {
      return await _dataSource.fetchHome();
    } catch (e) {
      AppLogger().error("home fetch error${e.toString()}");
      rethrow;
    }
  }
}

