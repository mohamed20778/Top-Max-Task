import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:top_max_task/features/auth/verify_otp/data/repo/verify_otp_repo.dart';
import 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final VerifyOtpRepo verifyOtpRepo;
  final TextEditingController phoneController;
  final TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  VerifyOtpCubit({
    required this.verifyOtpRepo,
    String? initialPhone,
  })  : phoneController = TextEditingController(text: initialPhone ?? ''),
        super(VerifyOtpInitial());

  Future<void> verifyOtp() async {
    if (!(formKey.currentState?.validate() ?? false)) return;

    emit(VerifyOtpLoading());
    try {
      final response = await verifyOtpRepo.verifyOtp(
        phoneNumber: phoneController.text.trim(),
        otp: otpController.text.trim(),
      );
      emit(VerifyOtpSuccess(data: response));
    } catch (e) {
      emit(VerifyOtpFailed(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    phoneController.dispose();
    otpController.dispose();
    return super.close();
  }
}

