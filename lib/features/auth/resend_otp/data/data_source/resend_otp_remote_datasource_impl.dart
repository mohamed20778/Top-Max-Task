import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/features/auth/resend_otp/data/data_source/resend_otp_remote_datasource.dart';
import 'package:top_max_task/features/auth/resend_otp/data/models/resend_otp_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: ResendOtpRemoteDataSource)
class ResendOtpRemoteDataSourceImpl implements ResendOtpRemoteDataSource {
  final DioConsumer client;
  ResendOtpRemoteDataSourceImpl(this.client);

  @override
  Future<ResendOtpResponseModel> resendOtp({required String phoneNumber}) async {
    try {
      final response = await client.post(
        path: AppApi.resendOtp,
        body: {
          'phone': phoneNumber,
          'country_id': 1,
        },
      );
      AppLogger().info("resendOtp$response");

      if (response is Map<String, dynamic>) {
        return ResendOtpResponseModel.fromJson(response);
      }
      if (response is Map) {
        return ResendOtpResponseModel.fromJson(
          Map<String, dynamic>.from(response),
        );
      }
      throw const FormatException('Unexpected response shape for resendOtp');
    } catch (e) {
      AppLogger().error("resendOtp error$e");
      rethrow;
    }
  }
}

