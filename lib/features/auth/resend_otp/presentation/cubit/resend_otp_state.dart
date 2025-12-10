import 'package:top_max_task/features/auth/resend_otp/data/models/resend_otp_response_model.dart';

sealed class ResendOtpState {}

final class ResendOtpInitial extends ResendOtpState {}

final class ResendOtpLoading extends ResendOtpState {}

final class ResendOtpSuccess extends ResendOtpState {
  final ResendOtpResponseModel data;
  ResendOtpSuccess(this.data);
}

final class ResendOtpFailed extends ResendOtpState {
  final String message;
  ResendOtpFailed(this.message);
}

