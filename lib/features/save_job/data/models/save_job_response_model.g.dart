// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_job_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveJobResponseModel _$SaveJobResponseModelFromJson(
  Map<String, dynamic> json,
) => _SaveJobResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  statusCode: json['status_code'] as String?,
  data: json['data'] == null
      ? null
      : SaveJobDataModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SaveJobResponseModelToJson(
  _SaveJobResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'status_code': instance.statusCode,
  'data': instance.data,
};

_SaveJobDataModel _$SaveJobDataModelFromJson(Map<String, dynamic> json) =>
    _SaveJobDataModel(isInWishlist: json['is_in_wishlist'] as bool?);

Map<String, dynamic> _$SaveJobDataModelToJson(_SaveJobDataModel instance) =>
    <String, dynamic>{'is_in_wishlist': instance.isInWishlist};
