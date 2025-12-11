
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_response_model.freezed.dart';
part 'generate_otp_response_model.g.dart';

@freezed
class GenerateOtpResponseModel with _$GenerateOtpResponseModel {
  const factory GenerateOtpResponseModel({
    String? status,
    String? message,
    @JsonKey(name: 'status_code') String? statusCode,
  }) = _GenerateOtpResponseModel;

  factory GenerateOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GenerateOtpResponseModelFromJson(json);
      
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
