// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResendOtpResponseModel _$ResendOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => _ResendOtpResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  statusCode: json['status_code'] as String?,
);

Map<String, dynamic> _$ResendOtpResponseModelToJson(
  _ResendOtpResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'status_code': instance.statusCode,
};
