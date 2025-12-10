// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) =>
    _SearchResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      statusCode: json['status_code'] as String?,
      data: json['data'] == null
          ? null
          : SearchDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResponseModelToJson(
  _SearchResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'status_code': instance.statusCode,
  'data': instance.data,
};

_SearchDataModel _$SearchDataModelFromJson(Map<String, dynamic> json) =>
    _SearchDataModel(
      jobs: (json['data'] as List<dynamic>?)
          ?.map((e) => SearchJobItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SearchDataModelToJson(_SearchDataModel instance) =>
    <String, dynamic>{'data': instance.jobs, 'pagination': instance.pagination};

_SearchJobItemModel _$SearchJobItemModelFromJson(Map<String, dynamic> json) =>
    _SearchJobItemModel(
      id: (json['id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num?)?.toInt(),
      jobTitle: json['job_title'] as String?,
      jobDescription: json['job_description'] as String?,
      applicationsCount: (json['applications_count'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$SearchJobItemModelToJson(_SearchJobItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'job_title': instance.jobTitle,
      'job_description': instance.jobDescription,
      'applications_count': instance.applicationsCount,
      'status': instance.status,
      'created_at': instance.createdAt,
    };

_PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) =>
    _PaginationModel(
      total: (json['total'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      hasMorePages: json['has_more_pages'] as bool?,
    );

Map<String, dynamic> _$PaginationModelToJson(_PaginationModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
      'has_more_pages': instance.hasMorePages,
    };
