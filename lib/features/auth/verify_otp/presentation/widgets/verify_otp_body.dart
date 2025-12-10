import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:top_max_task/config/routes/routes_name.dart';
import 'package:top_max_task/core/common_widgets/custom_button.dart';
import 'package:top_max_task/core/common_widgets/my_toast.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/features/auth/resend_otp/presentation/cubit/resend_otp_cubit.dart';
import 'package:top_max_task/features/auth/resend_otp/presentation/cubit/resend_otp_state.dart';
import 'package:top_max_task/features/auth/verify_otp/presentation/cubit/verify_otp_cubit.dart';
import 'package:top_max_task/features/auth/verify_otp/presentation/cubit/verify_otp_state.dart';
import 'package:top_max_task/gen/assets.gen.dart';

class VerifyOtpBody extends StatelessWidget {
  const VerifyOtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<VerifyOtpCubit>();

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      child: Form(
        key: cubit.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60.h),
            SvgPicture.asset(MyAssets.images.svg.generateOtpLogo.path),
            SizedBox(height: 18.h),
            Text(
              "Verify Your Phone Number",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter the verification code sent to your phone number ending in ***4758",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AppColors.greyColor),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h),
            Pinput(
              controller: cubit.otpController,
              length: 6,
              defaultPinTheme: PinTheme(
                width: 45.w,
                height: 40.h,
                textStyle: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: AppColors.primaryColor),
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: AppColors.primaryColor),
                ),
              ),
              keyboardType: TextInputType.number,
              validator: (value) => (value == null || value.trim().length < 4)
                  ? 'Invalid OTP'
                  : null,
            ),
            SizedBox(height: 32.h),
            BlocConsumer<VerifyOtpCubit, VerifyOtpState>(
              listener: (context, state) {
                if (state is VerifyOtpSuccess) {
                  showToast(
                    message: state.data.message ?? 'OTP verified',
                    isError: false,
                  );
                  context.go(AppRoutes.homeShell);
                } else if (state is VerifyOtpFailed) {
                  showToast(message: "Invalid Otp", isError: true);
                }
              },
              builder: (context, state) {
                if (state is VerifyOtpLoading) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  );
                }

                return CustomButton(
                  width: double.infinity,
                  height: 48.h,
                  radius: 50.r,
                  text: 'Verify',
                  backgroundColor: AppColors.primaryColor,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: AppColors.whiteColor),
                  onPressed: cubit.verifyOtp,
                );
              },
            ),
            BlocConsumer<ResendOtpCubit, ResendOtpState>(
              listener: (context, state) {
                if (state is ResendOtpSuccess) {
                  showToast(
                    message: state.data.message ?? 'OTP resent successfully',
                    isError: false,
                  );
                } else if (state is ResendOtpFailed) {
                  showToast(message: state.message, isError: true);
                }
              },
              builder: (context, state) {
                final isLoading = state is ResendOtpLoading;
                return TextButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          final phone = context
                              .read<VerifyOtpCubit>()
                              .phoneController
                              .text;
                          if (phone.isEmpty) {
                            showToast(
                              message: "Phone is required",
                              isError: true,
                            );
                            return;
                          }
                          context.read<ResendOtpCubit>().resendOtp(phone);
                        },
                  child: isLoading
                      ? const SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(
                          "Didn't Receive Code?",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
