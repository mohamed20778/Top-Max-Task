import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/features/auth/generate_otp/data/data_source/generate_otp_remote_datasource.dart';
import 'package:top_max_task/features/auth/generate_otp/data/models/generate_otp_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: GenerateOtpRemoteDataSource)
class GenerateOtpRemoteDataSourceImpl implements GenerateOtpRemoteDataSource {
  final DioConsumer client;
  GenerateOtpRemoteDataSourceImpl( this.client);

  @override
  Future<GenerateOtpResponseModel> generateOtp({
    required String phoneNumber,
  }) async {
    try {
      final response = await client.post(
        path: AppApi.generateOtp,
        body: {'phone': phoneNumber, "country_id": 1},
        headers: {
  
          'Accept-Language': 'ar',
        },
      );
      AppLogger().info("generateOtp$response");

      return GenerateOtpResponseModel.fromJson(response);

      
    } catch (e) {
      AppLogger().error("generateOtp error$e");
      rethrow;
    }
  }
}
