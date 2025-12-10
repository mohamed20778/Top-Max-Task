import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/resend_otp/presentation/cubit/resend_otp_cubit.dart';
import 'package:top_max_task/features/auth/verify_otp/presentation/cubit/verify_otp_cubit.dart';
import 'package:top_max_task/features/auth/verify_otp/presentation/widgets/verify_otp_body.dart';

import '../../data/repo/verify_otp_repo.dart';
import 'package:top_max_task/features/auth/resend_otp/data/repo/resend_otp_repo.dart';

class VerifyOtpScreen extends StatelessWidget {
  final String? phone;
  const VerifyOtpScreen({super.key, this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => VerifyOtpCubit(
              verifyOtpRepo: di<VerifyOtpRepo>(),
              initialPhone: phone,
            ),
          ),
          BlocProvider(
            create: (_) => ResendOtpCubit(
              resendOtpRepo: di<ResendOtpRepo>(),
            ),
          ),
        ],
        child: const VerifyOtpBody(),
      ),
    );
  }
}

