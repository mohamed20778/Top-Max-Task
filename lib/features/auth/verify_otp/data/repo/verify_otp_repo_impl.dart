import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/verify_otp/data/data_source/verify_otp_remote_datasource.dart';
import 'package:top_max_task/features/auth/verify_otp/data/models/verify_otp_response_model.dart';
import 'package:top_max_task/features/auth/verify_otp/data/repo/verify_otp_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: VerifyOtpRepo)
class VerifyOtpRepoImpl implements VerifyOtpRepo {
  final dataSource = di<VerifyOtpRemoteDataSource>();

  @override
  Future<VerifyOtpResponseModel> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final response = await dataSource.verifyOtp(
        phoneNumber: phoneNumber,
        otp: otp,
      );
      return response;
    } catch (e) {
      AppLogger().error("verifyOtp error${e.toString()}");
      throw Exception('Failed to verify OTP: ${e.toString()}');
    }
  }
}

