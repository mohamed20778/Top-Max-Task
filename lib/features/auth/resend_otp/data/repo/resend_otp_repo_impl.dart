import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/resend_otp/data/data_source/resend_otp_remote_datasource.dart';
import 'package:top_max_task/features/auth/resend_otp/data/models/resend_otp_response_model.dart';
import 'package:top_max_task/features/auth/resend_otp/data/repo/resend_otp_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: ResendOtpRepo)
class ResendOtpRepoImpl implements ResendOtpRepo {
  final dataSource = di<ResendOtpRemoteDataSource>();

  @override
  Future<ResendOtpResponseModel> resendOtp({required String phoneNumber}) async {
    try {
      final response = await dataSource.resendOtp(phoneNumber: phoneNumber);
      return response;
    } catch (e) {
      AppLogger().error("resendOtp error${e.toString()}");
      throw Exception('Failed to resend OTP: ${e.toString()}');
    }
  }
}

