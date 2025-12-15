import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_items_response_model.freezed.dart';
part 'saved_items_response_model.g.dart';

@freezed
class SavedItemsResponseModel with _$SavedItemsResponseModel {
  const factory SavedItemsResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
    SavedItemsDataModel? data,
  }) = _SavedItemsResponseModel;

  factory SavedItemsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SavedItemsResponseModelFromJson(json);
      
        @override
        // TODO: implement data
        SavedItemsDataModel? get data => throw UnimplementedError();
      
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
class SavedItemsDataModel with _$SavedItemsDataModel {
  const factory SavedItemsDataModel({
    @JsonKey(name: 'data') List<SavedItemModel>? items,
    SavedPaginationModel? pagination,
  }) = _SavedItemsDataModel;

  factory SavedItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$SavedItemsDataModelFromJson(json);
      
        @override
        // TODO: implement items
        List<SavedItemModel>? get items => throw UnimplementedError();
      
        @override
        // TODO: implement pagination
        SavedPaginationModel? get pagination => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }

}

@freezed
class SavedItemModel with _$SavedItemModel {
  const factory SavedItemModel({
    int? id,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'job_description') String? jobDescription,
    @JsonKey(name: 'location_priority') String? locationPriority,
    String? status,
    @JsonKey(name: 'app_status') String? appStatus,
    @JsonKey(name: 'min_salary') num? minSalary,
    @JsonKey(name: 'max_salary') num? maxSalary,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'office_location') String? officeLocation,
    String? type,
    @JsonKey(name: 'is_multiple_hires') bool? isMultipleHires,
    @JsonKey(name: 'is_urgent') bool? isUrgent,
    @JsonKey(name: 'is_featured') bool? isFeatured,
    @JsonKey(name: 'is_saved') bool? isSaved,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'active_since') String? activeSince,
    @JsonKey(name: 'formatted_salary') String? formattedSalary,
    String? title,
    String? provider,
    String? location,
    String? duration,
  }) = _SavedItemModel;

  factory SavedItemModel.fromJson(Map<String, dynamic> json) =>
      _$SavedItemModelFromJson(json);
      
        @override
        // TODO: implement activeSince
        String? get activeSince => throw UnimplementedError();
      
        @override
        // TODO: implement appStatus
        String? get appStatus => throw UnimplementedError();
      
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
        // TODO: implement createdAt
        String? get createdAt => throw UnimplementedError();
      
        @override
        // TODO: implement duration
        String? get duration => throw UnimplementedError();
      
        @override
        // TODO: implement formattedSalary
        String? get formattedSalary => throw UnimplementedError();
      
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
        // TODO: implement location
        String? get location => throw UnimplementedError();
      
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
        // TODO: implement officeLocation
        String? get officeLocation => throw UnimplementedError();
      
        @override
        // TODO: implement provider
        String? get provider => throw UnimplementedError();
      
        @override
        // TODO: implement status
        String? get status => throw UnimplementedError();
      
        @override
        // TODO: implement title
        String? get title => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement type
        String? get type => throw UnimplementedError();
      
   
}

@freezed
class SavedPaginationModel with _$SavedPaginationModel {
  const factory SavedPaginationModel({
    int? total,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
    int? from,
    int? to,
    @JsonKey(name: 'has_more_pages') bool? hasMorePages,
  }) = _SavedPaginationModel;

  factory SavedPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$SavedPaginationModelFromJson(json);
      
        @override
        // TODO: implement currentPage
        int? get currentPage => throw UnimplementedError();
      
        @override
        // TODO: implement from
        int? get from => throw UnimplementedError();
      
        @override
        // TODO: implement hasMorePages
        bool? get hasMorePages => throw UnimplementedError();
      
        @override
        // TODO: implement lastPage
        int? get lastPage => throw UnimplementedError();
      
        @override
        // TODO: implement perPage
        int? get perPage => throw UnimplementedError();
      
        @override
        // TODO: implement to
        int? get to => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement total
        int? get total => throw UnimplementedError();
}