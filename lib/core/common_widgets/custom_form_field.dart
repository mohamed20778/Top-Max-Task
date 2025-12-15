import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:top_max_task/gen/assets.gen.dart';

import '../constants/app_colors.dart' show AppColors, greyColor;

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller,
            obscureText: isPassword,
            keyboardType: keyboardType,
            decoration:  InputDecoration(
              
              prefixIcon: Icon(Icons.search_outlined),
              hint:Text("Search for jobs and courses"),
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(50) ,borderSide: BorderSide(
                color: Color(0xffCAC9C9)
              )),
              focusedBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(50) ,borderSide: BorderSide(
                color:  Color(0xffCAC9C9)
              )),
              enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(50) ,borderSide: BorderSide(
                color: Color(0xffCAC9C9)
              )),
            ),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}