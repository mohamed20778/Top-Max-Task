import 'package:top_max_task/features/auth/generate_otp/data/models/generate_otp_response_model.dart';

abstract class GenerateOtpRepo {
  Future<GenerateOtpResponseModel> generateOtp({required String phoneNumber});
}
