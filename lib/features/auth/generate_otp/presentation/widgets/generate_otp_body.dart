import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:top_max_task/config/routes/routes_name.dart';
import 'package:top_max_task/core/common_widgets/custom_button.dart';
import 'package:top_max_task/core/common_widgets/custom_phone_field.dart';
import 'package:top_max_task/core/common_widgets/my_toast.dart';
import 'package:top_max_task/core/constants/app_colors.dart';
import 'package:top_max_task/gen/assets.gen.dart';

import '../cubit/cubit/generate_otp_cubit.dart';

class GenerateOtpBody extends StatelessWidget {
  const GenerateOtpBody ({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GenerateOtpCubit>();
    return SingleChildScrollView(
      child: Form(
        key: cubit.formKey,
        child: Column(
        
          children: [
            SizedBox(height: 60.h),
            SvgPicture.asset(MyAssets.images.svg.generateOtpLogo.path),
            SizedBox(height: 18.h),
            Text(
              "Let’s Get Started",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
        
                "Continue with your phone number to access your personalized Himma experience.",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AppColors.greyColor),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h,),
            CustomPhoneField(hint: "** *** ****",controller:cubit.phoneNumberController ,),
            SizedBox(height: 10.h),
            BlocConsumer<GenerateOtpCubit, GenerateOtpState>(
          listener: (context, state) {
            if(state is GenerateOtpSuccess){
        showToast(message: "otp send successfully", isError: false);
        context.go(
          AppRoutes.verifyOtp,
          extra: cubit.phoneNumberController.value.nsn,
        );
            }else if(state is GenerateOtpFailed){
        showToast(message: state.errMessage, isError: true);
            }
          },
          builder: (context, state) {
            if(state is GenerateOtpLoading){
        return CircularProgressIndicator(color: AppColors.primaryColor,);
            }
            else{
        return CustomButton(
          width: 343.w,
          height: 48.h,
          radius: 50.r,
          text: "Continue",
          backgroundColor:AppColors.primaryColor ,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.whiteColor),
          onPressed: () {
            if(cubit.formKey.currentState!.validate()){
              cubit.generateOtp();
            }else{
              showToast(message: "Please enter a valid phone number", isError: true);
            }
          },
        );
            }
            }
        ),
            SizedBox(height: 20.h,),
            Text("By continue, you agree to Terms of Use and Privacy Policy.",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.greyColor),)
        
          ],
        ),
      ),
    );
  }
}
