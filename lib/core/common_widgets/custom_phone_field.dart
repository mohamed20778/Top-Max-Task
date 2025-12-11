import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../constants/app_colors.dart';


class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({
    super.key,
    this.lable,
    required this.hint,
    this.onChanged,
    this.controller,
    this.hPadding = 16,
    this.validator,
  });
  final String? lable;
  final String hint;
  final void Function(PhoneNumber)? onChanged;
  final PhoneController? controller;
  final double hPadding;
  final String? Function(PhoneNumber?)? validator;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: hPadding.h),
      title: lable != null
          ? Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                lable!,
              ),
            )
          : null,
      subtitle: Directionality(

        textDirection: TextDirection.ltr,
        child: PhoneFormField(
          countryButtonStyle: CountryButtonStyle(
            
            showFlag: false,
          ),
          key: key,
          validator: validator??(value) {
            if(value == null ){
              return "Please enter a valid phone number";
            }else if (value.nsn.length<9){
              return "phone number must be at least 9 digits";
            }
            return null;
          },
          controller: controller ??
              PhoneController(initialValue: PhoneNumber.parse('+971')),
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
        
          countrySelectorNavigator: const CountrySelectorNavigator.dialog(),
          decoration: InputDecoration(
            fillColor: AppColors.whiteColor,
            filled: true,
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            hintTextDirection: TextDirection.ltr,
            contentPadding: const EdgeInsets.all(16).r,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: AppColors.greyColor.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide:  BorderSide(
                color: AppColors.greyColor.withOpacity(0.5),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.r),
              borderSide:  BorderSide(
                color: AppColors.greyColor.withOpacity(0.5),
              ),
            ),
          ),
          inputFormatters: [
            FilteringTextInputFormatter.deny(
              RegExp(r'\s'),
            ),
          ],
          onChanged: onChanged,
          isCountryButtonPersistent: true,
        ),
      ),
    );
  }
}
