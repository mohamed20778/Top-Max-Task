// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => _VerifyOtpResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  statusCode: json['status_code'] as String?,
  data: json['data'] == null
      ? null
      : OtpData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
  _VerifyOtpResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'status_code': instance.statusCode,
  'data': instance.data,
};

_OtpData _$OtpDataFromJson(Map<String, dynamic> json) => _OtpData(
  token: json['token'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  nextStep: json['next_step'] as String?,
);

Map<String, dynamic> _$OtpDataToJson(_OtpData instance) => <String, dynamic>{
  'token': instance.token,
  'user': instance.user,
  'next_step': instance.nextStep,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num?)?.toInt(),
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  gender: json['gender'] as String?,
  city: json['city'] as String?,
  disabilityId: (json['disability_id'] as num?)?.toInt(),
  isVerified: json['is_verified'] as bool?,
  isCompleted: json['is_completed'] as bool?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'phone': instance.phone,
  'email': instance.email,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'gender': instance.gender,
  'city': instance.city,
  'disability_id': instance.disabilityId,
  'is_verified': instance.isVerified,
  'is_completed': instance.isCompleted,
  'created_at': instance.createdAt,
};
