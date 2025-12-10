// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponseModel {

 String? get status; String? get message;@JsonKey(name: 'status_code') String? get statusCode; SearchDataModel? get data;
/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseModelCopyWith<SearchResponseModel> get copyWith => _$SearchResponseModelCopyWithImpl<SearchResponseModel>(this as SearchResponseModel, _$identity);

  /// Serializes this SearchResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'SearchResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $SearchResponseModelCopyWith<$Res>  {
  factory $SearchResponseModelCopyWith(SearchResponseModel value, $Res Function(SearchResponseModel) _then) = _$SearchResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, SearchDataModel? data
});


$SearchDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._self, this._then);

  final SearchResponseModel _self;
  final $Res Function(SearchResponseModel) _then;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SearchDataModel?,
  ));
}
/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SearchDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResponseModel].
extension SearchResponseModelPatterns on SearchResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SearchDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SearchDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _SearchResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SearchDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResponseModel extends SearchResponseModel {
  const _SearchResponseModel({this.status, this.message, @JsonKey(name: 'status_code') this.statusCode, this.data}): super._();
  factory _SearchResponseModel.fromJson(Map<String, dynamic> json) => _$SearchResponseModelFromJson(json);

@override final  String? status;
@override final  String? message;
@override@JsonKey(name: 'status_code') final  String? statusCode;
@override final  SearchDataModel? data;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseModelCopyWith<_SearchResponseModel> get copyWith => __$SearchResponseModelCopyWithImpl<_SearchResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'SearchResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseModelCopyWith<$Res> implements $SearchResponseModelCopyWith<$Res> {
  factory _$SearchResponseModelCopyWith(_SearchResponseModel value, $Res Function(_SearchResponseModel) _then) = __$SearchResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, SearchDataModel? data
});


@override $SearchDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$SearchResponseModelCopyWithImpl<$Res>
    implements _$SearchResponseModelCopyWith<$Res> {
  __$SearchResponseModelCopyWithImpl(this._self, this._then);

  final _SearchResponseModel _self;
  final $Res Function(_SearchResponseModel) _then;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_SearchResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SearchDataModel?,
  ));
}

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SearchDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SearchDataModel {

@JsonKey(name: 'data') List<SearchJobItemModel>? get jobs; PaginationModel? get pagination;
/// Create a copy of SearchDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDataModelCopyWith<SearchDataModel> get copyWith => _$SearchDataModelCopyWithImpl<SearchDataModel>(this as SearchDataModel, _$identity);

  /// Serializes this SearchDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDataModel&&const DeepCollectionEquality().equals(other.jobs, jobs)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(jobs),pagination);

@override
String toString() {
  return 'SearchDataModel(jobs: $jobs, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $SearchDataModelCopyWith<$Res>  {
  factory $SearchDataModelCopyWith(SearchDataModel value, $Res Function(SearchDataModel) _then) = _$SearchDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<SearchJobItemModel>? jobs, PaginationModel? pagination
});


$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SearchDataModelCopyWithImpl<$Res>
    implements $SearchDataModelCopyWith<$Res> {
  _$SearchDataModelCopyWithImpl(this._self, this._then);

  final SearchDataModel _self;
  final $Res Function(SearchDataModel) _then;

/// Create a copy of SearchDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobs = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
jobs: freezed == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<SearchJobItemModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}
/// Create a copy of SearchDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchDataModel].
extension SearchDataModelPatterns on SearchDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchDataModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SearchJobItemModel>? jobs,  PaginationModel? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchDataModel() when $default != null:
return $default(_that.jobs,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SearchJobItemModel>? jobs,  PaginationModel? pagination)  $default,) {final _that = this;
switch (_that) {
case _SearchDataModel():
return $default(_that.jobs,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<SearchJobItemModel>? jobs,  PaginationModel? pagination)?  $default,) {final _that = this;
switch (_that) {
case _SearchDataModel() when $default != null:
return $default(_that.jobs,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchDataModel extends SearchDataModel {
  const _SearchDataModel({@JsonKey(name: 'data') final  List<SearchJobItemModel>? jobs, this.pagination}): _jobs = jobs,super._();
  factory _SearchDataModel.fromJson(Map<String, dynamic> json) => _$SearchDataModelFromJson(json);

 final  List<SearchJobItemModel>? _jobs;
@override@JsonKey(name: 'data') List<SearchJobItemModel>? get jobs {
  final value = _jobs;
  if (value == null) return null;
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PaginationModel? pagination;

/// Create a copy of SearchDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDataModelCopyWith<_SearchDataModel> get copyWith => __$SearchDataModelCopyWithImpl<_SearchDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchDataModel&&const DeepCollectionEquality().equals(other._jobs, _jobs)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_jobs),pagination);

@override
String toString() {
  return 'SearchDataModel(jobs: $jobs, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$SearchDataModelCopyWith<$Res> implements $SearchDataModelCopyWith<$Res> {
  factory _$SearchDataModelCopyWith(_SearchDataModel value, $Res Function(_SearchDataModel) _then) = __$SearchDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<SearchJobItemModel>? jobs, PaginationModel? pagination
});


@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SearchDataModelCopyWithImpl<$Res>
    implements _$SearchDataModelCopyWith<$Res> {
  __$SearchDataModelCopyWithImpl(this._self, this._then);

  final _SearchDataModel _self;
  final $Res Function(_SearchDataModel) _then;

/// Create a copy of SearchDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobs = freezed,Object? pagination = freezed,}) {
  return _then(_SearchDataModel(
jobs: freezed == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<SearchJobItemModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}

/// Create a copy of SearchDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$SearchJobItemModel {

 int? get id;@JsonKey(name: 'company_id') int? get companyId;@JsonKey(name: 'job_title') String? get jobTitle;@JsonKey(name: 'job_description') String? get jobDescription;@JsonKey(name: 'applications_count') int? get applicationsCount; String? get status;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of SearchJobItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchJobItemModelCopyWith<SearchJobItemModel> get copyWith => _$SearchJobItemModelCopyWithImpl<SearchJobItemModel>(this as SearchJobItemModel, _$identity);

  /// Serializes this SearchJobItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchJobItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.jobDescription, jobDescription) || other.jobDescription == jobDescription)&&(identical(other.applicationsCount, applicationsCount) || other.applicationsCount == applicationsCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,jobTitle,jobDescription,applicationsCount,status,createdAt);

@override
String toString() {
  return 'SearchJobItemModel(id: $id, companyId: $companyId, jobTitle: $jobTitle, jobDescription: $jobDescription, applicationsCount: $applicationsCount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SearchJobItemModelCopyWith<$Res>  {
  factory $SearchJobItemModelCopyWith(SearchJobItemModel value, $Res Function(SearchJobItemModel) _then) = _$SearchJobItemModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'company_id') int? companyId,@JsonKey(name: 'job_title') String? jobTitle,@JsonKey(name: 'job_description') String? jobDescription,@JsonKey(name: 'applications_count') int? applicationsCount, String? status,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$SearchJobItemModelCopyWithImpl<$Res>
    implements $SearchJobItemModelCopyWith<$Res> {
  _$SearchJobItemModelCopyWithImpl(this._self, this._then);

  final SearchJobItemModel _self;
  final $Res Function(SearchJobItemModel) _then;

/// Create a copy of SearchJobItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? companyId = freezed,Object? jobTitle = freezed,Object? jobDescription = freezed,Object? applicationsCount = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,jobDescription: freezed == jobDescription ? _self.jobDescription : jobDescription // ignore: cast_nullable_to_non_nullable
as String?,applicationsCount: freezed == applicationsCount ? _self.applicationsCount : applicationsCount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchJobItemModel].
extension SearchJobItemModelPatterns on SearchJobItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchJobItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchJobItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchJobItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchJobItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchJobItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchJobItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'applications_count')  int? applicationsCount,  String? status, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchJobItemModel() when $default != null:
return $default(_that.id,_that.companyId,_that.jobTitle,_that.jobDescription,_that.applicationsCount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'applications_count')  int? applicationsCount,  String? status, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _SearchJobItemModel():
return $default(_that.id,_that.companyId,_that.jobTitle,_that.jobDescription,_that.applicationsCount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'applications_count')  int? applicationsCount,  String? status, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SearchJobItemModel() when $default != null:
return $default(_that.id,_that.companyId,_that.jobTitle,_that.jobDescription,_that.applicationsCount,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchJobItemModel extends SearchJobItemModel {
  const _SearchJobItemModel({this.id, @JsonKey(name: 'company_id') this.companyId, @JsonKey(name: 'job_title') this.jobTitle, @JsonKey(name: 'job_description') this.jobDescription, @JsonKey(name: 'applications_count') this.applicationsCount, this.status, @JsonKey(name: 'created_at') this.createdAt}): super._();
  factory _SearchJobItemModel.fromJson(Map<String, dynamic> json) => _$SearchJobItemModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'company_id') final  int? companyId;
@override@JsonKey(name: 'job_title') final  String? jobTitle;
@override@JsonKey(name: 'job_description') final  String? jobDescription;
@override@JsonKey(name: 'applications_count') final  int? applicationsCount;
@override final  String? status;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of SearchJobItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchJobItemModelCopyWith<_SearchJobItemModel> get copyWith => __$SearchJobItemModelCopyWithImpl<_SearchJobItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchJobItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchJobItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.jobDescription, jobDescription) || other.jobDescription == jobDescription)&&(identical(other.applicationsCount, applicationsCount) || other.applicationsCount == applicationsCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,jobTitle,jobDescription,applicationsCount,status,createdAt);

@override
String toString() {
  return 'SearchJobItemModel(id: $id, companyId: $companyId, jobTitle: $jobTitle, jobDescription: $jobDescription, applicationsCount: $applicationsCount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SearchJobItemModelCopyWith<$Res> implements $SearchJobItemModelCopyWith<$Res> {
  factory _$SearchJobItemModelCopyWith(_SearchJobItemModel value, $Res Function(_SearchJobItemModel) _then) = __$SearchJobItemModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'company_id') int? companyId,@JsonKey(name: 'job_title') String? jobTitle,@JsonKey(name: 'job_description') String? jobDescription,@JsonKey(name: 'applications_count') int? applicationsCount, String? status,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$SearchJobItemModelCopyWithImpl<$Res>
    implements _$SearchJobItemModelCopyWith<$Res> {
  __$SearchJobItemModelCopyWithImpl(this._self, this._then);

  final _SearchJobItemModel _self;
  final $Res Function(_SearchJobItemModel) _then;

/// Create a copy of SearchJobItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? companyId = freezed,Object? jobTitle = freezed,Object? jobDescription = freezed,Object? applicationsCount = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_SearchJobItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,jobDescription: freezed == jobDescription ? _self.jobDescription : jobDescription // ignore: cast_nullable_to_non_nullable
as String?,applicationsCount: freezed == applicationsCount ? _self.applicationsCount : applicationsCount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaginationModel {

 int? get total;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage; int? get from; int? get to;@JsonKey(name: 'has_more_pages') bool? get hasMorePages;
/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<PaginationModel> get copyWith => _$PaginationModelCopyWithImpl<PaginationModel>(this as PaginationModel, _$identity);

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationModel&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,perPage,currentPage,lastPage,from,to,hasMorePages);

@override
String toString() {
  return 'PaginationModel(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to, hasMorePages: $hasMorePages)';
}


}

/// @nodoc
abstract mixin class $PaginationModelCopyWith<$Res>  {
  factory $PaginationModelCopyWith(PaginationModel value, $Res Function(PaginationModel) _then) = _$PaginationModelCopyWithImpl;
@useResult
$Res call({
 int? total,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to,@JsonKey(name: 'has_more_pages') bool? hasMorePages
});




}
/// @nodoc
class _$PaginationModelCopyWithImpl<$Res>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._self, this._then);

  final PaginationModel _self;
  final $Res Function(PaginationModel) _then;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,Object? hasMorePages = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,hasMorePages: freezed == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationModel].
extension PaginationModelPatterns on PaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? total, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage,  int? from,  int? to, @JsonKey(name: 'has_more_pages')  bool? hasMorePages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to,_that.hasMorePages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? total, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage,  int? from,  int? to, @JsonKey(name: 'has_more_pages')  bool? hasMorePages)  $default,) {final _that = this;
switch (_that) {
case _PaginationModel():
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to,_that.hasMorePages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? total, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'last_page')  int? lastPage,  int? from,  int? to, @JsonKey(name: 'has_more_pages')  bool? hasMorePages)?  $default,) {final _that = this;
switch (_that) {
case _PaginationModel() when $default != null:
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to,_that.hasMorePages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationModel extends PaginationModel {
  const _PaginationModel({this.total, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, this.from, this.to, @JsonKey(name: 'has_more_pages') this.hasMorePages}): super._();
  factory _PaginationModel.fromJson(Map<String, dynamic> json) => _$PaginationModelFromJson(json);

@override final  int? total;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override final  int? from;
@override final  int? to;
@override@JsonKey(name: 'has_more_pages') final  bool? hasMorePages;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationModelCopyWith<_PaginationModel> get copyWith => __$PaginationModelCopyWithImpl<_PaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationModel&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,perPage,currentPage,lastPage,from,to,hasMorePages);

@override
String toString() {
  return 'PaginationModel(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to, hasMorePages: $hasMorePages)';
}


}

/// @nodoc
abstract mixin class _$PaginationModelCopyWith<$Res> implements $PaginationModelCopyWith<$Res> {
  factory _$PaginationModelCopyWith(_PaginationModel value, $Res Function(_PaginationModel) _then) = __$PaginationModelCopyWithImpl;
@override @useResult
$Res call({
 int? total,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to,@JsonKey(name: 'has_more_pages') bool? hasMorePages
});




}
/// @nodoc
class __$PaginationModelCopyWithImpl<$Res>
    implements _$PaginationModelCopyWith<$Res> {
  __$PaginationModelCopyWithImpl(this._self, this._then);

  final _PaginationModel _self;
  final $Res Function(_PaginationModel) _then;

/// Create a copy of PaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,Object? hasMorePages = freezed,}) {
  return _then(_PaginationModel(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,hasMorePages: freezed == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
