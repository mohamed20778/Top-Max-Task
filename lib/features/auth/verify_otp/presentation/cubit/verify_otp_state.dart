
import 'package:top_max_task/features/auth/verify_otp/data/models/verify_otp_response_model.dart';

sealed class VerifyOtpState {}

final class VerifyOtpInitial extends VerifyOtpState {}

final class  VerifyOtpLoading extends VerifyOtpState {}

final class VerifyOtpSuccess extends VerifyOtpState {
  final VerifyOtpResponseModel data;

 VerifyOtpSuccess({required this.data});
}

final class VerifyOtpFailed extends VerifyOtpState {
  final String errMessage;

  VerifyOtpFailed({required this.errMessage});
}


