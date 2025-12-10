import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_max_task/core/api/app_api.dart';
import 'package:top_max_task/core/api/dio_consumer.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/verify_otp/data/data_source/verify_otp_remote_datasource.dart';
import 'package:top_max_task/features/auth/verify_otp/data/models/verify_otp_response_model.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: VerifyOtpRemoteDataSource)
class VerifyOtpRemoteDataSourceImpl implements VerifyOtpRemoteDataSource {
  final DioConsumer client;
  VerifyOtpRemoteDataSourceImpl(this.client);

  @override
  Future<VerifyOtpResponseModel> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    final pref = di<SharedPreferences>();
    try {
      final response = await client.post(
        path: AppApi.verifyOtp,
        body: {
          'phone': phoneNumber,
          'otp': otp,
          "country_id": 1,
        },
      );
      AppLogger().info("verifyOtp$response");

      VerifyOtpResponseModel parsed;
      if (response is Map<String, dynamic>) {
        parsed = VerifyOtpResponseModel.fromJson(response);
      }
      else if (response is Map) {
        parsed = VerifyOtpResponseModel.fromJson(
          Map<String, dynamic>.from(response),
        );
      } else {
        throw const FormatException('Unexpected response shape for verifyOtp');
      }

      final token = parsed.data?.token;
      if (token != null && token.isNotEmpty) {
        await pref.setString('token', token);
      }

      return parsed;
    } catch (e) {
      AppLogger().error("verifyOtp error$e");
      rethrow;
    }
  }
}

