import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_max_task/core/di/di.dart';
import 'package:top_max_task/features/auth/generate_otp/presentation/cubit/cubit/generate_otp_cubit.dart';
import 'package:top_max_task/features/auth/generate_otp/presentation/widgets/generate_otp_body.dart';

import '../../data/repo/generate_otp_repo.dart';

class GenerateOtpScreen extends StatelessWidget {
  const GenerateOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => GenerateOtpCubit(generateOtpRepo: di<GenerateOtpRepo>()),
          child: GenerateOtpBody()),
    );
  }
}
