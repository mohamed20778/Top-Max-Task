import 'package:top_max_task/features/auth/verify_otp/data/models/verify_otp_response_model.dart';

abstract class VerifyOtpRepo {
  Future<VerifyOtpResponseModel> verifyOtp({
    required String phoneNumber,
    required String otp,
  });
}

