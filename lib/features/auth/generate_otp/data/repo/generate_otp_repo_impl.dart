import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/generate_otp/data/data_source/generate_otp_remote_datasource.dart';
import 'package:top_max_task/features/auth/generate_otp/data/models/generate_otp_response_model.dart';
import 'package:top_max_task/features/auth/generate_otp/data/repo/generate_otp_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

@LazySingleton(as: GenerateOtpRepo)
class GenerateOtpRepoImpl implements GenerateOtpRepo {
  final dataSource = di<GenerateOtpRemoteDataSource>();

  @override
  Future<GenerateOtpResponseModel> generateOtp({
    required String phoneNumber,
  }) async {
    try {
      final response = await dataSource.generateOtp(phoneNumber: phoneNumber);
      return response;
    } catch (e) {
      AppLogger().error("generateOtp error${e.toString()}");
      throw Exception('Failed to generate OTP: ${e.toString()}');
    }
  }
}
