import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_job_response_model.freezed.dart';
part 'save_job_response_model.g.dart';

@freezed
class SaveJobResponseModel with _$SaveJobResponseModel {
  const SaveJobResponseModel._();
  const factory SaveJobResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
    SaveJobDataModel? data,
  }) = _SaveJobResponseModel;

  factory SaveJobResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaveJobResponseModelFromJson(json);
      
        @override
        // TODO: implement data
        SaveJobDataModel? get data => throw UnimplementedError();
      
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
class SaveJobDataModel with _$SaveJobDataModel {
  const SaveJobDataModel._();
  const factory SaveJobDataModel({
    @JsonKey(name: 'is_in_wishlist') bool? isInWishlist,
  }) = _SaveJobDataModel;

  factory SaveJobDataModel.fromJson(Map<String, dynamic> json) =>
      _$SaveJobDataModelFromJson(json);
      
        @override
        // TODO: implement isInWishlist
        bool? get isInWishlist => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
}

