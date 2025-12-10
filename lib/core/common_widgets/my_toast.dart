import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:top_max_task/core/constants/app_colors.dart';

void showToast({
  required String message,
  required bool isError,
  ToastGravity? gravity,
  Toast? toastLength,
  final Color?backgroundColor,
}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    toastLength: toastLength ?? Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.BOTTOM,
    backgroundColor: isError ? Colors.red : backgroundColor??Colors.green,
    textColor: Colors.white,
  );
}
//