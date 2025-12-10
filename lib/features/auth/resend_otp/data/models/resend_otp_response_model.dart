
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_response_model.freezed.dart';
part 'resend_otp_response_model.g.dart';

@freezed
class ResendOtpResponseModel with _$ResendOtpResponseModel {
  const ResendOtpResponseModel._();
  const factory ResendOtpResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
  }) = _ResendOtpResponseModel;

  factory ResendOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpResponseModelFromJson(json);
      
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

