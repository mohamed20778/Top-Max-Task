// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpResponseModel {

 String? get status; String? get message;@JsonKey(name: 'status_code') String? get statusCode; OtpData? get data;
/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpResponseModelCopyWith<VerifyOtpResponseModel> get copyWith => _$VerifyOtpResponseModelCopyWithImpl<VerifyOtpResponseModel>(this as VerifyOtpResponseModel, _$identity);

  /// Serializes this VerifyOtpResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'VerifyOtpResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpResponseModelCopyWith<$Res>  {
  factory $VerifyOtpResponseModelCopyWith(VerifyOtpResponseModel value, $Res Function(VerifyOtpResponseModel) _then) = _$VerifyOtpResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, OtpData? data
});


$OtpDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$VerifyOtpResponseModelCopyWithImpl<$Res>
    implements $VerifyOtpResponseModelCopyWith<$Res> {
  _$VerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final VerifyOtpResponseModel _self;
  final $Res Function(VerifyOtpResponseModel) _then;

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OtpData?,
  ));
}
/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OtpDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyOtpResponseModel].
extension VerifyOtpResponseModelPatterns on VerifyOtpResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  OtpData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  OtpData? data)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpResponseModel():
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  OtpData? data)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyOtpResponseModel extends VerifyOtpResponseModel {
  const _VerifyOtpResponseModel({this.status, this.message, @JsonKey(name: 'status_code') this.statusCode, this.data}): super._();
  factory _VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseModelFromJson(json);

@override final  String? status;
@override final  String? message;
@override@JsonKey(name: 'status_code') final  String? statusCode;
@override final  OtpData? data;

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpResponseModelCopyWith<_VerifyOtpResponseModel> get copyWith => __$VerifyOtpResponseModelCopyWithImpl<_VerifyOtpResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyOtpResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'VerifyOtpResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpResponseModelCopyWith<$Res> implements $VerifyOtpResponseModelCopyWith<$Res> {
  factory _$VerifyOtpResponseModelCopyWith(_VerifyOtpResponseModel value, $Res Function(_VerifyOtpResponseModel) _then) = __$VerifyOtpResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, OtpData? data
});


@override $OtpDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$VerifyOtpResponseModelCopyWithImpl<$Res>
    implements _$VerifyOtpResponseModelCopyWith<$Res> {
  __$VerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final _VerifyOtpResponseModel _self;
  final $Res Function(_VerifyOtpResponseModel) _then;

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_VerifyOtpResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OtpData?,
  ));
}

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OtpDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$OtpData {

 String? get token; User? get user;@JsonKey(name: 'next_step') String? get nextStep;
/// Create a copy of OtpData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpDataCopyWith<OtpData> get copyWith => _$OtpDataCopyWithImpl<OtpData>(this as OtpData, _$identity);

  /// Serializes this OtpData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpData&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.nextStep, nextStep) || other.nextStep == nextStep));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,nextStep);

@override
String toString() {
  return 'OtpData(token: $token, user: $user, nextStep: $nextStep)';
}


}

/// @nodoc
abstract mixin class $OtpDataCopyWith<$Res>  {
  factory $OtpDataCopyWith(OtpData value, $Res Function(OtpData) _then) = _$OtpDataCopyWithImpl;
@useResult
$Res call({
 String? token, User? user,@JsonKey(name: 'next_step') String? nextStep
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$OtpDataCopyWithImpl<$Res>
    implements $OtpDataCopyWith<$Res> {
  _$OtpDataCopyWithImpl(this._self, this._then);

  final OtpData _self;
  final $Res Function(OtpData) _then;

/// Create a copy of OtpData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? user = freezed,Object? nextStep = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,nextStep: freezed == nextStep ? _self.nextStep : nextStep // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OtpData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [OtpData].
extension OtpDataPatterns on OtpData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpData value)  $default,){
final _that = this;
switch (_that) {
case _OtpData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpData value)?  $default,){
final _that = this;
switch (_that) {
case _OtpData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  User? user, @JsonKey(name: 'next_step')  String? nextStep)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpData() when $default != null:
return $default(_that.token,_that.user,_that.nextStep);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  User? user, @JsonKey(name: 'next_step')  String? nextStep)  $default,) {final _that = this;
switch (_that) {
case _OtpData():
return $default(_that.token,_that.user,_that.nextStep);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  User? user, @JsonKey(name: 'next_step')  String? nextStep)?  $default,) {final _that = this;
switch (_that) {
case _OtpData() when $default != null:
return $default(_that.token,_that.user,_that.nextStep);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpData extends OtpData {
  const _OtpData({this.token, this.user, @JsonKey(name: 'next_step') this.nextStep}): super._();
  factory _OtpData.fromJson(Map<String, dynamic> json) => _$OtpDataFromJson(json);

@override final  String? token;
@override final  User? user;
@override@JsonKey(name: 'next_step') final  String? nextStep;

/// Create a copy of OtpData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpDataCopyWith<_OtpData> get copyWith => __$OtpDataCopyWithImpl<_OtpData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpData&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.nextStep, nextStep) || other.nextStep == nextStep));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,nextStep);

@override
String toString() {
  return 'OtpData(token: $token, user: $user, nextStep: $nextStep)';
}


}

/// @nodoc
abstract mixin class _$OtpDataCopyWith<$Res> implements $OtpDataCopyWith<$Res> {
  factory _$OtpDataCopyWith(_OtpData value, $Res Function(_OtpData) _then) = __$OtpDataCopyWithImpl;
@override @useResult
$Res call({
 String? token, User? user,@JsonKey(name: 'next_step') String? nextStep
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$OtpDataCopyWithImpl<$Res>
    implements _$OtpDataCopyWith<$Res> {
  __$OtpDataCopyWithImpl(this._self, this._then);

  final _OtpData _self;
  final $Res Function(_OtpData) _then;

/// Create a copy of OtpData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? user = freezed,Object? nextStep = freezed,}) {
  return _then(_OtpData(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,nextStep: freezed == nextStep ? _self.nextStep : nextStep // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OtpData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

 int? get id; String? get phone; String? get email;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; String? get city;@JsonKey(name: 'disability_id') int? get disabilityId;@JsonKey(name: 'is_verified') bool? get isVerified;@JsonKey(name: 'is_completed') bool? get isCompleted;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.disabilityId, disabilityId) || other.disabilityId == disabilityId)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,email,firstName,lastName,gender,city,disabilityId,isVerified,isCompleted,createdAt);

@override
String toString() {
  return 'User(id: $id, phone: $phone, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, city: $city, disabilityId: $disabilityId, isVerified: $isVerified, isCompleted: $isCompleted, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int? id, String? phone, String? email,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? gender, String? city,@JsonKey(name: 'disability_id') int? disabilityId,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'is_completed') bool? isCompleted,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? phone = freezed,Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? city = freezed,Object? disabilityId = freezed,Object? isVerified = freezed,Object? isCompleted = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,disabilityId: freezed == disabilityId ? _self.disabilityId : disabilityId // ignore: cast_nullable_to_non_nullable
as int?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? phone,  String? email, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  String? city, @JsonKey(name: 'disability_id')  int? disabilityId, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'is_completed')  bool? isCompleted, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.phone,_that.email,_that.firstName,_that.lastName,_that.gender,_that.city,_that.disabilityId,_that.isVerified,_that.isCompleted,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? phone,  String? email, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  String? city, @JsonKey(name: 'disability_id')  int? disabilityId, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'is_completed')  bool? isCompleted, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.phone,_that.email,_that.firstName,_that.lastName,_that.gender,_that.city,_that.disabilityId,_that.isVerified,_that.isCompleted,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? phone,  String? email, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  String? city, @JsonKey(name: 'disability_id')  int? disabilityId, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'is_completed')  bool? isCompleted, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.phone,_that.email,_that.firstName,_that.lastName,_that.gender,_that.city,_that.disabilityId,_that.isVerified,_that.isCompleted,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User extends User {
  const _User({this.id, this.phone, this.email, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.city, @JsonKey(name: 'disability_id') this.disabilityId, @JsonKey(name: 'is_verified') this.isVerified, @JsonKey(name: 'is_completed') this.isCompleted, @JsonKey(name: 'created_at') this.createdAt}): super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int? id;
@override final  String? phone;
@override final  String? email;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  String? city;
@override@JsonKey(name: 'disability_id') final  int? disabilityId;
@override@JsonKey(name: 'is_verified') final  bool? isVerified;
@override@JsonKey(name: 'is_completed') final  bool? isCompleted;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.disabilityId, disabilityId) || other.disabilityId == disabilityId)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,email,firstName,lastName,gender,city,disabilityId,isVerified,isCompleted,createdAt);

@override
String toString() {
  return 'User(id: $id, phone: $phone, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, city: $city, disabilityId: $disabilityId, isVerified: $isVerified, isCompleted: $isCompleted, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? phone, String? email,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? gender, String? city,@JsonKey(name: 'disability_id') int? disabilityId,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'is_completed') bool? isCompleted,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? phone = freezed,Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? city = freezed,Object? disabilityId = freezed,Object? isVerified = freezed,Object? isCompleted = freezed,Object? createdAt = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,disabilityId: freezed == disabilityId ? _self.disabilityId : disabilityId // ignore: cast_nullable_to_non_nullable
as int?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
