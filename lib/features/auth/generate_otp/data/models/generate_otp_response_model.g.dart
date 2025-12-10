// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerateOtpResponseModel _$GenerateOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => _GenerateOtpResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  statusCode: json['status_code'] as String?,
);

Map<String, dynamic> _$GenerateOtpResponseModelToJson(
  _GenerateOtpResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'status_code': instance.statusCode,
};
