// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_items_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedItemsResponseModel _$SavedItemsResponseModelFromJson(
  Map<String, dynamic> json,
) => _SavedItemsResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  statusCode: json['status_code'] as String?,
  data: json['data'] == null
      ? null
      : SavedItemsDataModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SavedItemsResponseModelToJson(
  _SavedItemsResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'status_code': instance.statusCode,
  'data': instance.data,
};

_SavedItemsDataModel _$SavedItemsDataModelFromJson(Map<String, dynamic> json) =>
    _SavedItemsDataModel(
      items: (json['data'] as List<dynamic>?)
          ?.map((e) => SavedItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : SavedPaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SavedItemsDataModelToJson(
  _SavedItemsDataModel instance,
) => <String, dynamic>{
  'data': instance.items,
  'pagination': instance.pagination,
};

_SavedItemModel _$SavedItemModelFromJson(Map<String, dynamic> json) =>
    _SavedItemModel(
      id: (json['id'] as num?)?.toInt(),
      jobTitle: json['job_title'] as String?,
      companyId: (json['company_id'] as num?)?.toInt(),
      companyLogo: json['company_logo'] as String?,
      companyName: json['company_name'] as String?,
      jobDescription: json['job_description'] as String?,
      locationPriority: json['location_priority'] as String?,
      status: json['status'] as String?,
      appStatus: json['app_status'] as String?,
      minSalary: json['min_salary'] as num?,
      maxSalary: json['max_salary'] as num?,
      jobType: json['job_type'] as String?,
      officeLocation: json['office_location'] as String?,
      type: json['type'] as String?,
      isMultipleHires: json['is_multiple_hires'] as bool?,
      isUrgent: json['is_urgent'] as bool?,
      isFeatured: json['is_featured'] as bool?,
      isSaved: json['is_saved'] as bool?,
      createdAt: json['created_at'] as String?,
      activeSince: json['active_since'] as String?,
      formattedSalary: json['formatted_salary'] as String?,
      title: json['title'] as String?,
      provider: json['provider'] as String?,
      location: json['location'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$SavedItemModelToJson(_SavedItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_title': instance.jobTitle,
      'company_id': instance.companyId,
      'company_logo': instance.companyLogo,
      'company_name': instance.companyName,
      'job_description': instance.jobDescription,
      'location_priority': instance.locationPriority,
      'status': instance.status,
      'app_status': instance.appStatus,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'job_type': instance.jobType,
      'office_location': instance.officeLocation,
      'type': instance.type,
      'is_multiple_hires': instance.isMultipleHires,
      'is_urgent': instance.isUrgent,
      'is_featured': instance.isFeatured,
      'is_saved': instance.isSaved,
      'created_at': instance.createdAt,
      'active_since': instance.activeSince,
      'formatted_salary': instance.formattedSalary,
      'title': instance.title,
      'provider': instance.provider,
      'location': instance.location,
      'duration': instance.duration,
    };

_SavedPaginationModel _$SavedPaginationModelFromJson(
  Map<String, dynamic> json,
) => _SavedPaginationModel(
  total: (json['total'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
  hasMorePages: json['has_more_pages'] as bool?,
);

Map<String, dynamic> _$SavedPaginationModelToJson(
  _SavedPaginationModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'from': instance.from,
  'to': instance.to,
  'has_more_pages': instance.hasMorePages,
};
