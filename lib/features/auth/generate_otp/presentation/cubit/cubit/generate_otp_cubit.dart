import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:top_max_task/features/auth/generate_otp/data/models/generate_otp_response_model.dart';
import 'package:top_max_task/features/auth/generate_otp/data/repo/generate_otp_repo.dart';
import 'package:top_max_task/utils/app-logger.dart';

part 'generate_otp_state.dart';

class GenerateOtpCubit extends Cubit<GenerateOtpState> {
  final PhoneController phoneNumberController = PhoneController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GenerateOtpRepo generateOtpRepo;
  GenerateOtpCubit({required this.generateOtpRepo}) : super(GenerateOtpInitial());

  Future<void> generateOtp() async {
    emit(GenerateOtpLoading());
    try {
      final response = await generateOtpRepo.generateOtp(
        phoneNumber: phoneNumberController.value.nsn,
      );
      AppLogger().info("Phone Number: ${phoneNumberController.value.nsn}");
      emit(GenerateOtpSuccess(data: response));
    } catch (e) {
      emit(GenerateOtpFailed(errMessage: e.toString()));
    }
  }
}
