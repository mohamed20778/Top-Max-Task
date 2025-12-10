// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateOtpResponseModel {

 String? get status; String? get message;@JsonKey(name: 'status_code') String? get statusCode;
/// Create a copy of GenerateOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateOtpResponseModelCopyWith<GenerateOtpResponseModel> get copyWith => _$GenerateOtpResponseModelCopyWithImpl<GenerateOtpResponseModel>(this as GenerateOtpResponseModel, _$identity);

  /// Serializes this GenerateOtpResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode);

@override
String toString() {
  return 'GenerateOtpResponseModel(status: $status, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $GenerateOtpResponseModelCopyWith<$Res>  {
  factory $GenerateOtpResponseModelCopyWith(GenerateOtpResponseModel value, $Res Function(GenerateOtpResponseModel) _then) = _$GenerateOtpResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode
});




}
/// @nodoc
class _$GenerateOtpResponseModelCopyWithImpl<$Res>
    implements $GenerateOtpResponseModelCopyWith<$Res> {
  _$GenerateOtpResponseModelCopyWithImpl(this._self, this._then);

  final GenerateOtpResponseModel _self;
  final $Res Function(GenerateOtpResponseModel) _then;

/// Create a copy of GenerateOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GenerateOtpResponseModel].
extension GenerateOtpResponseModelPatterns on GenerateOtpResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerateOtpResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerateOtpResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerateOtpResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GenerateOtpResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerateOtpResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GenerateOtpResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerateOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode)  $default,) {final _that = this;
switch (_that) {
case _GenerateOtpResponseModel():
return $default(_that.status,_that.message,_that.statusCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _GenerateOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenerateOtpResponseModel implements GenerateOtpResponseModel {
  const _GenerateOtpResponseModel({this.status, this.message, @JsonKey(name: 'status_code') this.statusCode});
  factory _GenerateOtpResponseModel.fromJson(Map<String, dynamic> json) => _$GenerateOtpResponseModelFromJson(json);

@override final  String? status;
@override final  String? message;
@override@JsonKey(name: 'status_code') final  String? statusCode;

/// Create a copy of GenerateOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateOtpResponseModelCopyWith<_GenerateOtpResponseModel> get copyWith => __$GenerateOtpResponseModelCopyWithImpl<_GenerateOtpResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateOtpResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode);

@override
String toString() {
  return 'GenerateOtpResponseModel(status: $status, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$GenerateOtpResponseModelCopyWith<$Res> implements $GenerateOtpResponseModelCopyWith<$Res> {
  factory _$GenerateOtpResponseModelCopyWith(_GenerateOtpResponseModel value, $Res Function(_GenerateOtpResponseModel) _then) = __$GenerateOtpResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode
});




}
/// @nodoc
class __$GenerateOtpResponseModelCopyWithImpl<$Res>
    implements _$GenerateOtpResponseModelCopyWith<$Res> {
  __$GenerateOtpResponseModelCopyWithImpl(this._self, this._then);

  final _GenerateOtpResponseModel _self;
  final $Res Function(_GenerateOtpResponseModel) _then;

/// Create a copy of GenerateOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_GenerateOtpResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
