import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_model.freezed.dart';
part 'verify_otp_response_model.g.dart';

@freezed
class VerifyOtpResponseModel with _$VerifyOtpResponseModel {
  const VerifyOtpResponseModel._();
  const factory VerifyOtpResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
    OtpData? data,
  }) = _VerifyOtpResponseModel;

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseModelFromJson(json);
      
        @override
        // TODO: implement data
        OtpData? get data => throw UnimplementedError();
      
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
class OtpData with _$OtpData {
  const OtpData._();
  const factory OtpData({
    String? token,
    User? user,
    @JsonKey(name: 'next_step') String? nextStep,
  }) = _OtpData;

  factory OtpData.fromJson(Map<String, dynamic> json) =>
      _$OtpDataFromJson(json);
      
        @override
        // TODO: implement nextStep
        String? get nextStep => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement token
        String? get token => throw UnimplementedError();
      
        @override
        // TODO: implement user
        User? get user => throw UnimplementedError();
}

@freezed
class User with _$User {
  const User._();
  const factory User({
    int? id,
    String? phone,
    String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    String? city,
    @JsonKey(name: 'disability_id') int? disabilityId,
    @JsonKey(name: 'is_verified') bool? isVerified,
    @JsonKey(name: 'is_completed') bool? isCompleted,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
  @override
  // TODO: implement city
  String? get city => throw UnimplementedError();
  
  @override
  // TODO: implement createdAt
  String? get createdAt => throw UnimplementedError();
  
  @override
  // TODO: implement disabilityId
  int? get disabilityId => throw UnimplementedError();
  
  @override
  // TODO: implement email
  String? get email => throw UnimplementedError();
  
  @override
  // TODO: implement firstName
  String? get firstName => throw UnimplementedError();
  
  @override
  // TODO: implement gender
  String? get gender => throw UnimplementedError();
  
  @override
  // TODO: implement id
  int? get id => throw UnimplementedError();
  
  @override
  // TODO: implement isCompleted
  bool? get isCompleted => throw UnimplementedError();
  
  @override
  // TODO: implement isVerified
  bool? get isVerified => throw UnimplementedError();
  
  @override
  // TODO: implement lastName
  String? get lastName => throw UnimplementedError();
  
  @override
  // TODO: implement phone
  String? get phone => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
