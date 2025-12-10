// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_job_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveJobResponseModel {

 String? get status; String? get message;@JsonKey(name: 'status_code') String? get statusCode; SaveJobDataModel? get data;
/// Create a copy of SaveJobResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveJobResponseModelCopyWith<SaveJobResponseModel> get copyWith => _$SaveJobResponseModelCopyWithImpl<SaveJobResponseModel>(this as SaveJobResponseModel, _$identity);

  /// Serializes this SaveJobResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveJobResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'SaveJobResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $SaveJobResponseModelCopyWith<$Res>  {
  factory $SaveJobResponseModelCopyWith(SaveJobResponseModel value, $Res Function(SaveJobResponseModel) _then) = _$SaveJobResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, SaveJobDataModel? data
});


$SaveJobDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$SaveJobResponseModelCopyWithImpl<$Res>
    implements $SaveJobResponseModelCopyWith<$Res> {
  _$SaveJobResponseModelCopyWithImpl(this._self, this._then);

  final SaveJobResponseModel _self;
  final $Res Function(SaveJobResponseModel) _then;

/// Create a copy of SaveJobResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SaveJobDataModel?,
  ));
}
/// Create a copy of SaveJobResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveJobDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SaveJobDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaveJobResponseModel].
extension SaveJobResponseModelPatterns on SaveJobResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveJobResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveJobResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveJobResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SaveJobResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveJobResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaveJobResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SaveJobDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveJobResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SaveJobDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _SaveJobResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SaveJobDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _SaveJobResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveJobResponseModel extends SaveJobResponseModel {
  const _SaveJobResponseModel({this.status, this.message, @JsonKey(name: 'status_code') this.statusCode, this.data}): super._();
  factory _SaveJobResponseModel.fromJson(Map<String, dynamic> json) => _$SaveJobResponseModelFromJson(json);

@override final  String? status;
@override final  String? message;
@override@JsonKey(name: 'status_code') final  String? statusCode;
@override final  SaveJobDataModel? data;

/// Create a copy of SaveJobResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveJobResponseModelCopyWith<_SaveJobResponseModel> get copyWith => __$SaveJobResponseModelCopyWithImpl<_SaveJobResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveJobResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveJobResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'SaveJobResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SaveJobResponseModelCopyWith<$Res> implements $SaveJobResponseModelCopyWith<$Res> {
  factory _$SaveJobResponseModelCopyWith(_SaveJobResponseModel value, $Res Function(_SaveJobResponseModel) _then) = __$SaveJobResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, SaveJobDataModel? data
});


@override $SaveJobDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$SaveJobResponseModelCopyWithImpl<$Res>
    implements _$SaveJobResponseModelCopyWith<$Res> {
  __$SaveJobResponseModelCopyWithImpl(this._self, this._then);

  final _SaveJobResponseModel _self;
  final $Res Function(_SaveJobResponseModel) _then;

/// Create a copy of SaveJobResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_SaveJobResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SaveJobDataModel?,
  ));
}

/// Create a copy of SaveJobResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveJobDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SaveJobDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SaveJobDataModel {

@JsonKey(name: 'is_in_wishlist') bool? get isInWishlist;
/// Create a copy of SaveJobDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveJobDataModelCopyWith<SaveJobDataModel> get copyWith => _$SaveJobDataModelCopyWithImpl<SaveJobDataModel>(this as SaveJobDataModel, _$identity);

  /// Serializes this SaveJobDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveJobDataModel&&(identical(other.isInWishlist, isInWishlist) || other.isInWishlist == isInWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isInWishlist);

@override
String toString() {
  return 'SaveJobDataModel(isInWishlist: $isInWishlist)';
}


}

/// @nodoc
abstract mixin class $SaveJobDataModelCopyWith<$Res>  {
  factory $SaveJobDataModelCopyWith(SaveJobDataModel value, $Res Function(SaveJobDataModel) _then) = _$SaveJobDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_in_wishlist') bool? isInWishlist
});




}
/// @nodoc
class _$SaveJobDataModelCopyWithImpl<$Res>
    implements $SaveJobDataModelCopyWith<$Res> {
  _$SaveJobDataModelCopyWithImpl(this._self, this._then);

  final SaveJobDataModel _self;
  final $Res Function(SaveJobDataModel) _then;

/// Create a copy of SaveJobDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isInWishlist = freezed,}) {
  return _then(_self.copyWith(
isInWishlist: freezed == isInWishlist ? _self.isInWishlist : isInWishlist // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SaveJobDataModel].
extension SaveJobDataModelPatterns on SaveJobDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveJobDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveJobDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveJobDataModel value)  $default,){
final _that = this;
switch (_that) {
case _SaveJobDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveJobDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaveJobDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_in_wishlist')  bool? isInWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveJobDataModel() when $default != null:
return $default(_that.isInWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_in_wishlist')  bool? isInWishlist)  $default,) {final _that = this;
switch (_that) {
case _SaveJobDataModel():
return $default(_that.isInWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_in_wishlist')  bool? isInWishlist)?  $default,) {final _that = this;
switch (_that) {
case _SaveJobDataModel() when $default != null:
return $default(_that.isInWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveJobDataModel extends SaveJobDataModel {
  const _SaveJobDataModel({@JsonKey(name: 'is_in_wishlist') this.isInWishlist}): super._();
  factory _SaveJobDataModel.fromJson(Map<String, dynamic> json) => _$SaveJobDataModelFromJson(json);

@override@JsonKey(name: 'is_in_wishlist') final  bool? isInWishlist;

/// Create a copy of SaveJobDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveJobDataModelCopyWith<_SaveJobDataModel> get copyWith => __$SaveJobDataModelCopyWithImpl<_SaveJobDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveJobDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveJobDataModel&&(identical(other.isInWishlist, isInWishlist) || other.isInWishlist == isInWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isInWishlist);

@override
String toString() {
  return 'SaveJobDataModel(isInWishlist: $isInWishlist)';
}


}

/// @nodoc
abstract mixin class _$SaveJobDataModelCopyWith<$Res> implements $SaveJobDataModelCopyWith<$Res> {
  factory _$SaveJobDataModelCopyWith(_SaveJobDataModel value, $Res Function(_SaveJobDataModel) _then) = __$SaveJobDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_in_wishlist') bool? isInWishlist
});




}
/// @nodoc
class __$SaveJobDataModelCopyWithImpl<$Res>
    implements _$SaveJobDataModelCopyWith<$Res> {
  __$SaveJobDataModelCopyWithImpl(this._self, this._then);

  final _SaveJobDataModel _self;
  final $Res Function(_SaveJobDataModel) _then;

/// Create a copy of SaveJobDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isInWishlist = freezed,}) {
  return _then(_SaveJobDataModel(
isInWishlist: freezed == isInWishlist ? _self.isInWishlist : isInWishlist // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
