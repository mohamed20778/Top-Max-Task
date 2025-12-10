// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) =>
    _HomeResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      statusCode: json['status_code'] as String?,
      data: json['data'] == null
          ? null
          : HomeDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeResponseModelToJson(_HomeResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'status_code': instance.statusCode,
      'data': instance.data,
    };

_HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) =>
    _HomeDataModel(
      featuredJobs: (json['featured_jobs'] as List<dynamic>?)
          ?.map((e) => JobItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentOpenings: (json['recent_openings'] as List<dynamic>?)
          ?.map((e) => JobItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      disabilityJobs: (json['disability_jobs'] as List<dynamic>?)
          ?.map((e) => JobItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataModelToJson(_HomeDataModel instance) =>
    <String, dynamic>{
      'featured_jobs': instance.featuredJobs,
      'recent_openings': instance.recentOpenings,
      'disability_jobs': instance.disabilityJobs,
    };

_JobItemModel _$JobItemModelFromJson(Map<String, dynamic> json) =>
    _JobItemModel(
      id: (json['id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num?)?.toInt(),
      companyLogo: json['company_logo'] as String?,
      companyName: json['company_name'] as String?,
      jobTitle: json['job_title'] as String?,
      jobDescription: json['job_description'] as String?,
      companyType: json['company_type'] as String?,
      gender: json['gender'] as String?,
      nationality: json['nationality'] as String?,
      vacancyCount: (json['vacancy_count'] as num?)?.toInt(),
      workingHours: json['working_hours'] as String?,
      workingDays: json['working_days'] as String?,
      salaryToBeDiscussed: json['salary_to_be_discussed'] as bool?,
      experienceLevel: json['experience_level'] as String?,
      education: json['education'] as String?,
      jobType: json['job_type'] as String?,
      locationPriority: json['location_priority'] as String?,
      officeLocation: json['office_location'] as String?,
      isMultipleHires: json['is_multiple_hires'] as bool?,
      isUrgent: json['is_urgent'] as bool?,
      isFeatured: json['is_featured'] as bool?,
      isSaved: json['is_saved'] as bool?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      activeSince: json['active_since'] as String?,
      minSalary: json['min_salary'] as num?,
      maxSalary: json['max_salary'] as num?,
      formattedSalary: json['formatted_salary'] as String?,
    );

Map<String, dynamic> _$JobItemModelToJson(_JobItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'company_logo': instance.companyLogo,
      'company_name': instance.companyName,
      'job_title': instance.jobTitle,
      'job_description': instance.jobDescription,
      'company_type': instance.companyType,
      'gender': instance.gender,
      'nationality': instance.nationality,
      'vacancy_count': instance.vacancyCount,
      'working_hours': instance.workingHours,
      'working_days': instance.workingDays,
      'salary_to_be_discussed': instance.salaryToBeDiscussed,
      'experience_level': instance.experienceLevel,
      'education': instance.education,
      'job_type': instance.jobType,
      'location_priority': instance.locationPriority,
      'office_location': instance.officeLocation,
      'is_multiple_hires': instance.isMultipleHires,
      'is_urgent': instance.isUrgent,
      'is_featured': instance.isFeatured,
      'is_saved': instance.isSaved,
      'status': instance.status,
      'created_at': instance.createdAt,
      'active_since': instance.activeSince,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'formatted_salary': instance.formattedSalary,
    };
