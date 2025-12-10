import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response_model.freezed.dart';
part 'search_response_model.g.dart';

@freezed
class SearchResponseModel with _$SearchResponseModel {
  const SearchResponseModel._();
  const factory SearchResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
    SearchDataModel? data,
  }) = _SearchResponseModel;

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
      
  @override
  SearchDataModel? get data => throw UnimplementedError();
  
  @override
  String? get message => throw UnimplementedError();
  
  @override
  String? get status => throw UnimplementedError();
  
  @override
  String? get statusCode => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

@freezed
class SearchDataModel with _$SearchDataModel {
  const SearchDataModel._();
  const factory SearchDataModel({
    @JsonKey(name: 'data') List<SearchJobItemModel>? jobs,
    PaginationModel? pagination,
  }) = _SearchDataModel;

  factory SearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$SearchDataModelFromJson(json);
      
  @override
  List<SearchJobItemModel>? get jobs => throw UnimplementedError();
  
  @override
  PaginationModel? get pagination => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

@freezed
class SearchJobItemModel with _$SearchJobItemModel {
  const SearchJobItemModel._();
  const factory SearchJobItemModel({
    int? id,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'job_description') String? jobDescription,
    @JsonKey(name: 'applications_count') int? applicationsCount,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _SearchJobItemModel;

  factory SearchJobItemModel.fromJson(Map<String, dynamic> json) =>
      _$SearchJobItemModelFromJson(json);
      
  @override
  int? get applicationsCount => throw UnimplementedError();
  
  @override
  int? get companyId => throw UnimplementedError();
  
  @override
  String? get createdAt => throw UnimplementedError();
  
  @override
  int? get id => throw UnimplementedError();
  
  @override
  String? get jobDescription => throw UnimplementedError();
  
  @override
  String? get jobTitle => throw UnimplementedError();
  
  @override
  String? get status => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

@freezed
class PaginationModel with _$PaginationModel {
  const PaginationModel._();
  const factory PaginationModel({
    int? total,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
    int? from,
    int? to,
    @JsonKey(name: 'has_more_pages') bool? hasMorePages,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
      
  @override
  int? get currentPage => throw UnimplementedError();
  
  @override
  int? get from => throw UnimplementedError();
  
  @override
  bool? get hasMorePages => throw UnimplementedError();
  
  @override
  int? get lastPage => throw UnimplementedError();
  
  @override
  int? get perPage => throw UnimplementedError();
  
  @override
  int? get total => throw UnimplementedError();
  
  @override
  int? get to => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

