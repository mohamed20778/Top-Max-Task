import 'package:bloc/bloc.dart';
import 'package:top_max_task/features/auth/resend_otp/data/repo/resend_otp_repo.dart';
import 'resend_otp_state.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  final ResendOtpRepo resendOtpRepo;
  ResendOtpCubit({required this.resendOtpRepo}) : super(ResendOtpInitial());

  Future<void> resendOtp(String phone) async {
    emit(ResendOtpLoading());
    try {
      final response = await resendOtpRepo.resendOtp(phoneNumber: phone);
      emit(ResendOtpSuccess(response));
    } catch (e) {
      emit(ResendOtpFailed(e.toString()));
    }
  }
}

