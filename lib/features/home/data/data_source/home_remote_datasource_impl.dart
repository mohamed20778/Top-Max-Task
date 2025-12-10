import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/features/home/data/data_source/home_remote_datasource.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioConsumer client;
  HomeRemoteDataSourceImpl(this.client);

  @override
  Future<HomeResponseModel> fetchHome() async {
    try {
      final response = await client.get(path: AppApi.mobileHome);
      AppLogger().info("home$response");

      if (response is Map<String, dynamic>) {
        return HomeResponseModel.fromJson(response);
      }
      if (response is Map) {
        return HomeResponseModel.fromJson(Map<String, dynamic>.from(response));
      }
      throw const FormatException('Unexpected response shape for home');
    } catch (e) {
      AppLogger().error("home error$e");
      rethrow;
    }
  }
}

