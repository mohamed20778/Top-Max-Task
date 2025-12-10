part of 'generate_otp_cubit.dart';

sealed class GenerateOtpState {}

final class GenerateOtpInitial extends GenerateOtpState {}

final class GenerateOtpLoading extends GenerateOtpState {}

final class GenerateOtpSuccess extends GenerateOtpState {
  final GenerateOtpResponseModel data;

  GenerateOtpSuccess({required this.data});
}

final class GenerateOtpFailed extends GenerateOtpState {
  final String errMessage;

  GenerateOtpFailed({required this.errMessage});
}
