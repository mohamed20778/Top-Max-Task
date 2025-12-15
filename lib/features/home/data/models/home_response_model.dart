import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
class HomeResponseModel with _$HomeResponseModel {
  const HomeResponseModel._();
  const factory HomeResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
    HomeDataModel? data,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
      
        @override
        // TODO: implement data
        HomeDataModel? get data => throw UnimplementedError();
      
        @override
        // TODO: implement message
        String? get message => throw UnimplementedError();
      
        @override
        // TODO: implement status
        String? get status => throw UnimplementedError();
      
        @override
        // TODO: implement statusCode
        String? get statusCode => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
}

@freezed
class HomeDataModel with _$HomeDataModel {
  const HomeDataModel._();
  const factory HomeDataModel({
    @JsonKey(name: 'featured_jobs') List<JobItemModel>? featuredJobs,
    @JsonKey(name: 'recent_openings') List<JobItemModel>? recentOpenings,
    @JsonKey(name: 'disability_jobs') List<JobItemModel>? disabilityJobs,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
      
        @override
        List<JobItemModel>? get disabilityJobs => throw UnimplementedError();
      
        @override
        List<JobItemModel>? get featuredJobs => throw UnimplementedError();
      
        @override
        List<JobItemModel>? get recentOpenings => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
}

@freezed
class JobItemModel with _$JobItemModel {
  const JobItemModel._();
  const factory JobItemModel({
    int? id,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'job_description') String? jobDescription,
    @JsonKey(name: 'company_type') String? companyType,
    String? gender,
    String? nationality,
    @JsonKey(name: 'vacancy_count') int? vacancyCount,
    @JsonKey(name: 'working_hours') String? workingHours,
    @JsonKey(name: 'working_days') String? workingDays,
    @JsonKey(name: 'salary_to_be_discussed') bool? salaryToBeDiscussed,
    @JsonKey(name: 'experience_level') String? experienceLevel,
    String? education,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'location_priority') String? locationPriority,
    @JsonKey(name: 'office_location') String? officeLocation,
    @JsonKey(name: 'is_multiple_hires') bool? isMultipleHires,
    @JsonKey(name: 'is_urgent') bool? isUrgent,
    @JsonKey(name: 'is_featured') bool? isFeatured,
    @JsonKey(name: 'is_saved') bool? isSaved,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'active_since') String? activeSince,
    @JsonKey(name: 'min_salary') num? minSalary,
    @JsonKey(name: 'max_salary') num? maxSalary,
    @JsonKey(name: 'formatted_salary') String? formattedSalary,
  }) = _JobItemModel;

  factory JobItemModel.fromJson(Map<String, dynamic> json) =>
      _$JobItemModelFromJson(json);
      
        @override
        // TODO: implement activeSince
        String? get activeSince => throw UnimplementedError();
      
        @override
        // TODO: implement companyId
        int? get companyId => throw UnimplementedError();
      
        @override
        // TODO: implement companyLogo
        String? get companyLogo => throw UnimplementedError();
      
        @override
        // TODO: implement companyName
        String? get companyName => throw UnimplementedError();
      
        @override
        // TODO: implement companyType
        String? get companyType => throw UnimplementedError();
      
        @override
        // TODO: implement createdAt
        String? get createdAt => throw UnimplementedError();
      
        @override
        // TODO: implement education
        String? get education => throw UnimplementedError();
      
        @override
        // TODO: implement experienceLevel
        String? get experienceLevel => throw UnimplementedError();
      
        @override
        // TODO: implement formattedSalary
        String? get formattedSalary => throw UnimplementedError();
      
        @override
        // TODO: implement gender
        String? get gender => throw UnimplementedError();
      
        @override
        // TODO: implement id
        int? get id => throw UnimplementedError();
      
        @override
        // TODO: implement isFeatured
        bool? get isFeatured => throw UnimplementedError();
      
        @override
        // TODO: implement isMultipleHires
        bool? get isMultipleHires => throw UnimplementedError();
      
        @override
        // TODO: implement isSaved
        bool? get isSaved => throw UnimplementedError();
      
        @override
        // TODO: implement isUrgent
        bool? get isUrgent => throw UnimplementedError();
      
        @override
        // TODO: implement jobDescription
        String? get jobDescription => throw UnimplementedError();
      
        @override
        // TODO: implement jobTitle
        String? get jobTitle => throw UnimplementedError();
      
        @override
        // TODO: implement jobType
        String? get jobType => throw UnimplementedError();
      
        @override
        // TODO: implement locationPriority
        String? get locationPriority => throw UnimplementedError();
      
        @override
        // TODO: implement maxSalary
        num? get maxSalary => throw UnimplementedError();
      
        @override
        // TODO: implement minSalary
        num? get minSalary => throw UnimplementedError();
      
        @override
        // TODO: implement nationality
        String? get nationality => throw UnimplementedError();
      
        @override
        // TODO: implement officeLocation
        String? get officeLocation => throw UnimplementedError();
      
        @override
        // TODO: implement salaryToBeDiscussed
        bool? get salaryToBeDiscussed => throw UnimplementedError();
      
        @override
        // TODO: implement status
        String? get status => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement vacancyCount
        int? get vacancyCount => throw UnimplementedError();
      
        @override
        // TODO: implement workingDays
        String? get workingDays => throw UnimplementedError();
      
        @override
        // TODO: implement workingHours
        String? get workingHours => throw UnimplementedError();
}

