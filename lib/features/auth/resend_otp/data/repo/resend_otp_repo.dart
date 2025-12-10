import 'package:top_max_task/features/auth/resend_otp/data/models/resend_otp_response_model.dart';

abstract class ResendOtpRepo {
  Future<ResendOtpResponseModel> resendOtp({required String phoneNumber});
}

