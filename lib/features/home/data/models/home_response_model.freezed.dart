// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeResponseModel {

 String? get status; String? get message;@JsonKey(name: 'status_code') String? get statusCode; HomeDataModel? get data;
/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResponseModelCopyWith<HomeResponseModel> get copyWith => _$HomeResponseModelCopyWithImpl<HomeResponseModel>(this as HomeResponseModel, _$identity);

  /// Serializes this HomeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'HomeResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeResponseModelCopyWith<$Res>  {
  factory $HomeResponseModelCopyWith(HomeResponseModel value, $Res Function(HomeResponseModel) _then) = _$HomeResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, HomeDataModel? data
});


$HomeDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._self, this._then);

  final HomeResponseModel _self;
  final $Res Function(HomeResponseModel) _then;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeDataModel?,
  ));
}
/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HomeDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeResponseModel].
extension HomeResponseModelPatterns on HomeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  HomeDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  HomeDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _HomeResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  HomeDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _HomeResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeResponseModel extends HomeResponseModel {
  const _HomeResponseModel({this.status, this.message, @JsonKey(name: 'status_code') this.statusCode, this.data}): super._();
  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) => _$HomeResponseModelFromJson(json);

@override final  String? status;
@override final  String? message;
@override@JsonKey(name: 'status_code') final  String? statusCode;
@override final  HomeDataModel? data;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeResponseModelCopyWith<_HomeResponseModel> get copyWith => __$HomeResponseModelCopyWithImpl<_HomeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'HomeResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomeResponseModelCopyWith<$Res> implements $HomeResponseModelCopyWith<$Res> {
  factory _$HomeResponseModelCopyWith(_HomeResponseModel value, $Res Function(_HomeResponseModel) _then) = __$HomeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, HomeDataModel? data
});


@override $HomeDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$HomeResponseModelCopyWithImpl<$Res>
    implements _$HomeResponseModelCopyWith<$Res> {
  __$HomeResponseModelCopyWithImpl(this._self, this._then);

  final _HomeResponseModel _self;
  final $Res Function(_HomeResponseModel) _then;

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_HomeResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeDataModel?,
  ));
}

/// Create a copy of HomeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HomeDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$HomeDataModel {

@JsonKey(name: 'featured_jobs') List<JobItemModel>? get featuredJobs;@JsonKey(name: 'recent_openings') List<JobItemModel>? get recentOpenings;@JsonKey(name: 'disability_jobs') List<JobItemModel>? get disabilityJobs;
/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDataModelCopyWith<HomeDataModel> get copyWith => _$HomeDataModelCopyWithImpl<HomeDataModel>(this as HomeDataModel, _$identity);

  /// Serializes this HomeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeDataModel&&const DeepCollectionEquality().equals(other.featuredJobs, featuredJobs)&&const DeepCollectionEquality().equals(other.recentOpenings, recentOpenings)&&const DeepCollectionEquality().equals(other.disabilityJobs, disabilityJobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(featuredJobs),const DeepCollectionEquality().hash(recentOpenings),const DeepCollectionEquality().hash(disabilityJobs));

@override
String toString() {
  return 'HomeDataModel(featuredJobs: $featuredJobs, recentOpenings: $recentOpenings, disabilityJobs: $disabilityJobs)';
}


}

/// @nodoc
abstract mixin class $HomeDataModelCopyWith<$Res>  {
  factory $HomeDataModelCopyWith(HomeDataModel value, $Res Function(HomeDataModel) _then) = _$HomeDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'featured_jobs') List<JobItemModel>? featuredJobs,@JsonKey(name: 'recent_openings') List<JobItemModel>? recentOpenings,@JsonKey(name: 'disability_jobs') List<JobItemModel>? disabilityJobs
});




}
/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._self, this._then);

  final HomeDataModel _self;
  final $Res Function(HomeDataModel) _then;

/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? featuredJobs = freezed,Object? recentOpenings = freezed,Object? disabilityJobs = freezed,}) {
  return _then(_self.copyWith(
featuredJobs: freezed == featuredJobs ? _self.featuredJobs : featuredJobs // ignore: cast_nullable_to_non_nullable
as List<JobItemModel>?,recentOpenings: freezed == recentOpenings ? _self.recentOpenings : recentOpenings // ignore: cast_nullable_to_non_nullable
as List<JobItemModel>?,disabilityJobs: freezed == disabilityJobs ? _self.disabilityJobs : disabilityJobs // ignore: cast_nullable_to_non_nullable
as List<JobItemModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeDataModel].
extension HomeDataModelPatterns on HomeDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeDataModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'featured_jobs')  List<JobItemModel>? featuredJobs, @JsonKey(name: 'recent_openings')  List<JobItemModel>? recentOpenings, @JsonKey(name: 'disability_jobs')  List<JobItemModel>? disabilityJobs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
return $default(_that.featuredJobs,_that.recentOpenings,_that.disabilityJobs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'featured_jobs')  List<JobItemModel>? featuredJobs, @JsonKey(name: 'recent_openings')  List<JobItemModel>? recentOpenings, @JsonKey(name: 'disability_jobs')  List<JobItemModel>? disabilityJobs)  $default,) {final _that = this;
switch (_that) {
case _HomeDataModel():
return $default(_that.featuredJobs,_that.recentOpenings,_that.disabilityJobs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'featured_jobs')  List<JobItemModel>? featuredJobs, @JsonKey(name: 'recent_openings')  List<JobItemModel>? recentOpenings, @JsonKey(name: 'disability_jobs')  List<JobItemModel>? disabilityJobs)?  $default,) {final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
return $default(_that.featuredJobs,_that.recentOpenings,_that.disabilityJobs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeDataModel extends HomeDataModel {
  const _HomeDataModel({@JsonKey(name: 'featured_jobs') final  List<JobItemModel>? featuredJobs, @JsonKey(name: 'recent_openings') final  List<JobItemModel>? recentOpenings, @JsonKey(name: 'disability_jobs') final  List<JobItemModel>? disabilityJobs}): _featuredJobs = featuredJobs,_recentOpenings = recentOpenings,_disabilityJobs = disabilityJobs,super._();
  factory _HomeDataModel.fromJson(Map<String, dynamic> json) => _$HomeDataModelFromJson(json);

 final  List<JobItemModel>? _featuredJobs;
@override@JsonKey(name: 'featured_jobs') List<JobItemModel>? get featuredJobs {
  final value = _featuredJobs;
  if (value == null) return null;
  if (_featuredJobs is EqualUnmodifiableListView) return _featuredJobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<JobItemModel>? _recentOpenings;
@override@JsonKey(name: 'recent_openings') List<JobItemModel>? get recentOpenings {
  final value = _recentOpenings;
  if (value == null) return null;
  if (_recentOpenings is EqualUnmodifiableListView) return _recentOpenings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<JobItemModel>? _disabilityJobs;
@override@JsonKey(name: 'disability_jobs') List<JobItemModel>? get disabilityJobs {
  final value = _disabilityJobs;
  if (value == null) return null;
  if (_disabilityJobs is EqualUnmodifiableListView) return _disabilityJobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDataModelCopyWith<_HomeDataModel> get copyWith => __$HomeDataModelCopyWithImpl<_HomeDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeDataModel&&const DeepCollectionEquality().equals(other._featuredJobs, _featuredJobs)&&const DeepCollectionEquality().equals(other._recentOpenings, _recentOpenings)&&const DeepCollectionEquality().equals(other._disabilityJobs, _disabilityJobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_featuredJobs),const DeepCollectionEquality().hash(_recentOpenings),const DeepCollectionEquality().hash(_disabilityJobs));

@override
String toString() {
  return 'HomeDataModel(featuredJobs: $featuredJobs, recentOpenings: $recentOpenings, disabilityJobs: $disabilityJobs)';
}


}

/// @nodoc
abstract mixin class _$HomeDataModelCopyWith<$Res> implements $HomeDataModelCopyWith<$Res> {
  factory _$HomeDataModelCopyWith(_HomeDataModel value, $Res Function(_HomeDataModel) _then) = __$HomeDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'featured_jobs') List<JobItemModel>? featuredJobs,@JsonKey(name: 'recent_openings') List<JobItemModel>? recentOpenings,@JsonKey(name: 'disability_jobs') List<JobItemModel>? disabilityJobs
});




}
/// @nodoc
class __$HomeDataModelCopyWithImpl<$Res>
    implements _$HomeDataModelCopyWith<$Res> {
  __$HomeDataModelCopyWithImpl(this._self, this._then);

  final _HomeDataModel _self;
  final $Res Function(_HomeDataModel) _then;

/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? featuredJobs = freezed,Object? recentOpenings = freezed,Object? disabilityJobs = freezed,}) {
  return _then(_HomeDataModel(
featuredJobs: freezed == featuredJobs ? _self._featuredJobs : featuredJobs // ignore: cast_nullable_to_non_nullable
as List<JobItemModel>?,recentOpenings: freezed == recentOpenings ? _self._recentOpenings : recentOpenings // ignore: cast_nullable_to_non_nullable
as List<JobItemModel>?,disabilityJobs: freezed == disabilityJobs ? _self._disabilityJobs : disabilityJobs // ignore: cast_nullable_to_non_nullable
as List<JobItemModel>?,
  ));
}


}


/// @nodoc
mixin _$JobItemModel {

 int? get id;@JsonKey(name: 'company_id') int? get companyId;@JsonKey(name: 'company_logo') String? get companyLogo;@JsonKey(name: 'company_name') String? get companyName;@JsonKey(name: 'job_title') String? get jobTitle;@JsonKey(name: 'job_description') String? get jobDescription;@JsonKey(name: 'company_type') String? get companyType; String? get gender; String? get nationality;@JsonKey(name: 'vacancy_count') int? get vacancyCount;@JsonKey(name: 'working_hours') String? get workingHours;@JsonKey(name: 'working_days') String? get workingDays;@JsonKey(name: 'salary_to_be_discussed') bool? get salaryToBeDiscussed;@JsonKey(name: 'experience_level') String? get experienceLevel; String? get education;@JsonKey(name: 'job_type') String? get jobType;@JsonKey(name: 'location_priority') String? get locationPriority;@JsonKey(name: 'office_location') String? get officeLocation;@JsonKey(name: 'is_multiple_hires') bool? get isMultipleHires;@JsonKey(name: 'is_urgent') bool? get isUrgent;@JsonKey(name: 'is_featured') bool? get isFeatured;@JsonKey(name: 'is_saved') bool? get isSaved; String? get status;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'active_since') String? get activeSince;@JsonKey(name: 'min_salary') num? get minSalary;@JsonKey(name: 'max_salary') num? get maxSalary;@JsonKey(name: 'formatted_salary') String? get formattedSalary;
/// Create a copy of JobItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobItemModelCopyWith<JobItemModel> get copyWith => _$JobItemModelCopyWithImpl<JobItemModel>(this as JobItemModel, _$identity);

  /// Serializes this JobItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.jobDescription, jobDescription) || other.jobDescription == jobDescription)&&(identical(other.companyType, companyType) || other.companyType == companyType)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.vacancyCount, vacancyCount) || other.vacancyCount == vacancyCount)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.workingDays, workingDays) || other.workingDays == workingDays)&&(identical(other.salaryToBeDiscussed, salaryToBeDiscussed) || other.salaryToBeDiscussed == salaryToBeDiscussed)&&(identical(other.experienceLevel, experienceLevel) || other.experienceLevel == experienceLevel)&&(identical(other.education, education) || other.education == education)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.locationPriority, locationPriority) || other.locationPriority == locationPriority)&&(identical(other.officeLocation, officeLocation) || other.officeLocation == officeLocation)&&(identical(other.isMultipleHires, isMultipleHires) || other.isMultipleHires == isMultipleHires)&&(identical(other.isUrgent, isUrgent) || other.isUrgent == isUrgent)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.activeSince, activeSince) || other.activeSince == activeSince)&&(identical(other.minSalary, minSalary) || other.minSalary == minSalary)&&(identical(other.maxSalary, maxSalary) || other.maxSalary == maxSalary)&&(identical(other.formattedSalary, formattedSalary) || other.formattedSalary == formattedSalary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,companyId,companyLogo,companyName,jobTitle,jobDescription,companyType,gender,nationality,vacancyCount,workingHours,workingDays,salaryToBeDiscussed,experienceLevel,education,jobType,locationPriority,officeLocation,isMultipleHires,isUrgent,isFeatured,isSaved,status,createdAt,activeSince,minSalary,maxSalary,formattedSalary]);

@override
String toString() {
  return 'JobItemModel(id: $id, companyId: $companyId, companyLogo: $companyLogo, companyName: $companyName, jobTitle: $jobTitle, jobDescription: $jobDescription, companyType: $companyType, gender: $gender, nationality: $nationality, vacancyCount: $vacancyCount, workingHours: $workingHours, workingDays: $workingDays, salaryToBeDiscussed: $salaryToBeDiscussed, experienceLevel: $experienceLevel, education: $education, jobType: $jobType, locationPriority: $locationPriority, officeLocation: $officeLocation, isMultipleHires: $isMultipleHires, isUrgent: $isUrgent, isFeatured: $isFeatured, isSaved: $isSaved, status: $status, createdAt: $createdAt, activeSince: $activeSince, minSalary: $minSalary, maxSalary: $maxSalary, formattedSalary: $formattedSalary)';
}


}

/// @nodoc
abstract mixin class $JobItemModelCopyWith<$Res>  {
  factory $JobItemModelCopyWith(JobItemModel value, $Res Function(JobItemModel) _then) = _$JobItemModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'company_id') int? companyId,@JsonKey(name: 'company_logo') String? companyLogo,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'job_title') String? jobTitle,@JsonKey(name: 'job_description') String? jobDescription,@JsonKey(name: 'company_type') String? companyType, String? gender, String? nationality,@JsonKey(name: 'vacancy_count') int? vacancyCount,@JsonKey(name: 'working_hours') String? workingHours,@JsonKey(name: 'working_days') String? workingDays,@JsonKey(name: 'salary_to_be_discussed') bool? salaryToBeDiscussed,@JsonKey(name: 'experience_level') String? experienceLevel, String? education,@JsonKey(name: 'job_type') String? jobType,@JsonKey(name: 'location_priority') String? locationPriority,@JsonKey(name: 'office_location') String? officeLocation,@JsonKey(name: 'is_multiple_hires') bool? isMultipleHires,@JsonKey(name: 'is_urgent') bool? isUrgent,@JsonKey(name: 'is_featured') bool? isFeatured,@JsonKey(name: 'is_saved') bool? isSaved, String? status,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'active_since') String? activeSince,@JsonKey(name: 'min_salary') num? minSalary,@JsonKey(name: 'max_salary') num? maxSalary,@JsonKey(name: 'formatted_salary') String? formattedSalary
});




}
/// @nodoc
class _$JobItemModelCopyWithImpl<$Res>
    implements $JobItemModelCopyWith<$Res> {
  _$JobItemModelCopyWithImpl(this._self, this._then);

  final JobItemModel _self;
  final $Res Function(JobItemModel) _then;

/// Create a copy of JobItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? companyId = freezed,Object? companyLogo = freezed,Object? companyName = freezed,Object? jobTitle = freezed,Object? jobDescription = freezed,Object? companyType = freezed,Object? gender = freezed,Object? nationality = freezed,Object? vacancyCount = freezed,Object? workingHours = freezed,Object? workingDays = freezed,Object? salaryToBeDiscussed = freezed,Object? experienceLevel = freezed,Object? education = freezed,Object? jobType = freezed,Object? locationPriority = freezed,Object? officeLocation = freezed,Object? isMultipleHires = freezed,Object? isUrgent = freezed,Object? isFeatured = freezed,Object? isSaved = freezed,Object? status = freezed,Object? createdAt = freezed,Object? activeSince = freezed,Object? minSalary = freezed,Object? maxSalary = freezed,Object? formattedSalary = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,jobDescription: freezed == jobDescription ? _self.jobDescription : jobDescription // ignore: cast_nullable_to_non_nullable
as String?,companyType: freezed == companyType ? _self.companyType : companyType // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,vacancyCount: freezed == vacancyCount ? _self.vacancyCount : vacancyCount // ignore: cast_nullable_to_non_nullable
as int?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String?,workingDays: freezed == workingDays ? _self.workingDays : workingDays // ignore: cast_nullable_to_non_nullable
as String?,salaryToBeDiscussed: freezed == salaryToBeDiscussed ? _self.salaryToBeDiscussed : salaryToBeDiscussed // ignore: cast_nullable_to_non_nullable
as bool?,experienceLevel: freezed == experienceLevel ? _self.experienceLevel : experienceLevel // ignore: cast_nullable_to_non_nullable
as String?,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,jobType: freezed == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String?,locationPriority: freezed == locationPriority ? _self.locationPriority : locationPriority // ignore: cast_nullable_to_non_nullable
as String?,officeLocation: freezed == officeLocation ? _self.officeLocation : officeLocation // ignore: cast_nullable_to_non_nullable
as String?,isMultipleHires: freezed == isMultipleHires ? _self.isMultipleHires : isMultipleHires // ignore: cast_nullable_to_non_nullable
as bool?,isUrgent: freezed == isUrgent ? _self.isUrgent : isUrgent // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,isSaved: freezed == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,activeSince: freezed == activeSince ? _self.activeSince : activeSince // ignore: cast_nullable_to_non_nullable
as String?,minSalary: freezed == minSalary ? _self.minSalary : minSalary // ignore: cast_nullable_to_non_nullable
as num?,maxSalary: freezed == maxSalary ? _self.maxSalary : maxSalary // ignore: cast_nullable_to_non_nullable
as num?,formattedSalary: freezed == formattedSalary ? _self.formattedSalary : formattedSalary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [JobItemModel].
extension JobItemModelPatterns on JobItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobItemModel value)  $default,){
final _that = this;
switch (_that) {
case _JobItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _JobItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'company_logo')  String? companyLogo, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'company_type')  String? companyType,  String? gender,  String? nationality, @JsonKey(name: 'vacancy_count')  int? vacancyCount, @JsonKey(name: 'working_hours')  String? workingHours, @JsonKey(name: 'working_days')  String? workingDays, @JsonKey(name: 'salary_to_be_discussed')  bool? salaryToBeDiscussed, @JsonKey(name: 'experience_level')  String? experienceLevel,  String? education, @JsonKey(name: 'job_type')  String? jobType, @JsonKey(name: 'location_priority')  String? locationPriority, @JsonKey(name: 'office_location')  String? officeLocation, @JsonKey(name: 'is_multiple_hires')  bool? isMultipleHires, @JsonKey(name: 'is_urgent')  bool? isUrgent, @JsonKey(name: 'is_featured')  bool? isFeatured, @JsonKey(name: 'is_saved')  bool? isSaved,  String? status, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'active_since')  String? activeSince, @JsonKey(name: 'min_salary')  num? minSalary, @JsonKey(name: 'max_salary')  num? maxSalary, @JsonKey(name: 'formatted_salary')  String? formattedSalary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobItemModel() when $default != null:
return $default(_that.id,_that.companyId,_that.companyLogo,_that.companyName,_that.jobTitle,_that.jobDescription,_that.companyType,_that.gender,_that.nationality,_that.vacancyCount,_that.workingHours,_that.workingDays,_that.salaryToBeDiscussed,_that.experienceLevel,_that.education,_that.jobType,_that.locationPriority,_that.officeLocation,_that.isMultipleHires,_that.isUrgent,_that.isFeatured,_that.isSaved,_that.status,_that.createdAt,_that.activeSince,_that.minSalary,_that.maxSalary,_that.formattedSalary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'company_logo')  String? companyLogo, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'company_type')  String? companyType,  String? gender,  String? nationality, @JsonKey(name: 'vacancy_count')  int? vacancyCount, @JsonKey(name: 'working_hours')  String? workingHours, @JsonKey(name: 'working_days')  String? workingDays, @JsonKey(name: 'salary_to_be_discussed')  bool? salaryToBeDiscussed, @JsonKey(name: 'experience_level')  String? experienceLevel,  String? education, @JsonKey(name: 'job_type')  String? jobType, @JsonKey(name: 'location_priority')  String? locationPriority, @JsonKey(name: 'office_location')  String? officeLocation, @JsonKey(name: 'is_multiple_hires')  bool? isMultipleHires, @JsonKey(name: 'is_urgent')  bool? isUrgent, @JsonKey(name: 'is_featured')  bool? isFeatured, @JsonKey(name: 'is_saved')  bool? isSaved,  String? status, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'active_since')  String? activeSince, @JsonKey(name: 'min_salary')  num? minSalary, @JsonKey(name: 'max_salary')  num? maxSalary, @JsonKey(name: 'formatted_salary')  String? formattedSalary)  $default,) {final _that = this;
switch (_that) {
case _JobItemModel():
return $default(_that.id,_that.companyId,_that.companyLogo,_that.companyName,_that.jobTitle,_that.jobDescription,_that.companyType,_that.gender,_that.nationality,_that.vacancyCount,_that.workingHours,_that.workingDays,_that.salaryToBeDiscussed,_that.experienceLevel,_that.education,_that.jobType,_that.locationPriority,_that.officeLocation,_that.isMultipleHires,_that.isUrgent,_that.isFeatured,_that.isSaved,_that.status,_that.createdAt,_that.activeSince,_that.minSalary,_that.maxSalary,_that.formattedSalary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'company_logo')  String? companyLogo, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'company_type')  String? companyType,  String? gender,  String? nationality, @JsonKey(name: 'vacancy_count')  int? vacancyCount, @JsonKey(name: 'working_hours')  String? workingHours, @JsonKey(name: 'working_days')  String? workingDays, @JsonKey(name: 'salary_to_be_discussed')  bool? salaryToBeDiscussed, @JsonKey(name: 'experience_level')  String? experienceLevel,  String? education, @JsonKey(name: 'job_type')  String? jobType, @JsonKey(name: 'location_priority')  String? locationPriority, @JsonKey(name: 'office_location')  String? officeLocation, @JsonKey(name: 'is_multiple_hires')  bool? isMultipleHires, @JsonKey(name: 'is_urgent')  bool? isUrgent, @JsonKey(name: 'is_featured')  bool? isFeatured, @JsonKey(name: 'is_saved')  bool? isSaved,  String? status, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'active_since')  String? activeSince, @JsonKey(name: 'min_salary')  num? minSalary, @JsonKey(name: 'max_salary')  num? maxSalary, @JsonKey(name: 'formatted_salary')  String? formattedSalary)?  $default,) {final _that = this;
switch (_that) {
case _JobItemModel() when $default != null:
return $default(_that.id,_that.companyId,_that.companyLogo,_that.companyName,_that.jobTitle,_that.jobDescription,_that.companyType,_that.gender,_that.nationality,_that.vacancyCount,_that.workingHours,_that.workingDays,_that.salaryToBeDiscussed,_that.experienceLevel,_that.education,_that.jobType,_that.locationPriority,_that.officeLocation,_that.isMultipleHires,_that.isUrgent,_that.isFeatured,_that.isSaved,_that.status,_that.createdAt,_that.activeSince,_that.minSalary,_that.maxSalary,_that.formattedSalary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobItemModel extends JobItemModel {
  const _JobItemModel({this.id, @JsonKey(name: 'company_id') this.companyId, @JsonKey(name: 'company_logo') this.companyLogo, @JsonKey(name: 'company_name') this.companyName, @JsonKey(name: 'job_title') this.jobTitle, @JsonKey(name: 'job_description') this.jobDescription, @JsonKey(name: 'company_type') this.companyType, this.gender, this.nationality, @JsonKey(name: 'vacancy_count') this.vacancyCount, @JsonKey(name: 'working_hours') this.workingHours, @JsonKey(name: 'working_days') this.workingDays, @JsonKey(name: 'salary_to_be_discussed') this.salaryToBeDiscussed, @JsonKey(name: 'experience_level') this.experienceLevel, this.education, @JsonKey(name: 'job_type') this.jobType, @JsonKey(name: 'location_priority') this.locationPriority, @JsonKey(name: 'office_location') this.officeLocation, @JsonKey(name: 'is_multiple_hires') this.isMultipleHires, @JsonKey(name: 'is_urgent') this.isUrgent, @JsonKey(name: 'is_featured') this.isFeatured, @JsonKey(name: 'is_saved') this.isSaved, this.status, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'active_since') this.activeSince, @JsonKey(name: 'min_salary') this.minSalary, @JsonKey(name: 'max_salary') this.maxSalary, @JsonKey(name: 'formatted_salary') this.formattedSalary}): super._();
  factory _JobItemModel.fromJson(Map<String, dynamic> json) => _$JobItemModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'company_id') final  int? companyId;
@override@JsonKey(name: 'company_logo') final  String? companyLogo;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override@JsonKey(name: 'job_title') final  String? jobTitle;
@override@JsonKey(name: 'job_description') final  String? jobDescription;
@override@JsonKey(name: 'company_type') final  String? companyType;
@override final  String? gender;
@override final  String? nationality;
@override@JsonKey(name: 'vacancy_count') final  int? vacancyCount;
@override@JsonKey(name: 'working_hours') final  String? workingHours;
@override@JsonKey(name: 'working_days') final  String? workingDays;
@override@JsonKey(name: 'salary_to_be_discussed') final  bool? salaryToBeDiscussed;
@override@JsonKey(name: 'experience_level') final  String? experienceLevel;
@override final  String? education;
@override@JsonKey(name: 'job_type') final  String? jobType;
@override@JsonKey(name: 'location_priority') final  String? locationPriority;
@override@JsonKey(name: 'office_location') final  String? officeLocation;
@override@JsonKey(name: 'is_multiple_hires') final  bool? isMultipleHires;
@override@JsonKey(name: 'is_urgent') final  bool? isUrgent;
@override@JsonKey(name: 'is_featured') final  bool? isFeatured;
@override@JsonKey(name: 'is_saved') final  bool? isSaved;
@override final  String? status;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'active_since') final  String? activeSince;
@override@JsonKey(name: 'min_salary') final  num? minSalary;
@override@JsonKey(name: 'max_salary') final  num? maxSalary;
@override@JsonKey(name: 'formatted_salary') final  String? formattedSalary;

/// Create a copy of JobItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobItemModelCopyWith<_JobItemModel> get copyWith => __$JobItemModelCopyWithImpl<_JobItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.jobDescription, jobDescription) || other.jobDescription == jobDescription)&&(identical(other.companyType, companyType) || other.companyType == companyType)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.vacancyCount, vacancyCount) || other.vacancyCount == vacancyCount)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.workingDays, workingDays) || other.workingDays == workingDays)&&(identical(other.salaryToBeDiscussed, salaryToBeDiscussed) || other.salaryToBeDiscussed == salaryToBeDiscussed)&&(identical(other.experienceLevel, experienceLevel) || other.experienceLevel == experienceLevel)&&(identical(other.education, education) || other.education == education)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.locationPriority, locationPriority) || other.locationPriority == locationPriority)&&(identical(other.officeLocation, officeLocation) || other.officeLocation == officeLocation)&&(identical(other.isMultipleHires, isMultipleHires) || other.isMultipleHires == isMultipleHires)&&(identical(other.isUrgent, isUrgent) || other.isUrgent == isUrgent)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.activeSince, activeSince) || other.activeSince == activeSince)&&(identical(other.minSalary, minSalary) || other.minSalary == minSalary)&&(identical(other.maxSalary, maxSalary) || other.maxSalary == maxSalary)&&(identical(other.formattedSalary, formattedSalary) || other.formattedSalary == formattedSalary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,companyId,companyLogo,companyName,jobTitle,jobDescription,companyType,gender,nationality,vacancyCount,workingHours,workingDays,salaryToBeDiscussed,experienceLevel,education,jobType,locationPriority,officeLocation,isMultipleHires,isUrgent,isFeatured,isSaved,status,createdAt,activeSince,minSalary,maxSalary,formattedSalary]);

@override
String toString() {
  return 'JobItemModel(id: $id, companyId: $companyId, companyLogo: $companyLogo, companyName: $companyName, jobTitle: $jobTitle, jobDescription: $jobDescription, companyType: $companyType, gender: $gender, nationality: $nationality, vacancyCount: $vacancyCount, workingHours: $workingHours, workingDays: $workingDays, salaryToBeDiscussed: $salaryToBeDiscussed, experienceLevel: $experienceLevel, education: $education, jobType: $jobType, locationPriority: $locationPriority, officeLocation: $officeLocation, isMultipleHires: $isMultipleHires, isUrgent: $isUrgent, isFeatured: $isFeatured, isSaved: $isSaved, status: $status, createdAt: $createdAt, activeSince: $activeSince, minSalary: $minSalary, maxSalary: $maxSalary, formattedSalary: $formattedSalary)';
}


}

/// @nodoc
abstract mixin class _$JobItemModelCopyWith<$Res> implements $JobItemModelCopyWith<$Res> {
  factory _$JobItemModelCopyWith(_JobItemModel value, $Res Function(_JobItemModel) _then) = __$JobItemModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'company_id') int? companyId,@JsonKey(name: 'company_logo') String? companyLogo,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'job_title') String? jobTitle,@JsonKey(name: 'job_description') String? jobDescription,@JsonKey(name: 'company_type') String? companyType, String? gender, String? nationality,@JsonKey(name: 'vacancy_count') int? vacancyCount,@JsonKey(name: 'working_hours') String? workingHours,@JsonKey(name: 'working_days') String? workingDays,@JsonKey(name: 'salary_to_be_discussed') bool? salaryToBeDiscussed,@JsonKey(name: 'experience_level') String? experienceLevel, String? education,@JsonKey(name: 'job_type') String? jobType,@JsonKey(name: 'location_priority') String? locationPriority,@JsonKey(name: 'office_location') String? officeLocation,@JsonKey(name: 'is_multiple_hires') bool? isMultipleHires,@JsonKey(name: 'is_urgent') bool? isUrgent,@JsonKey(name: 'is_featured') bool? isFeatured,@JsonKey(name: 'is_saved') bool? isSaved, String? status,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'active_since') String? activeSince,@JsonKey(name: 'min_salary') num? minSalary,@JsonKey(name: 'max_salary') num? maxSalary,@JsonKey(name: 'formatted_salary') String? formattedSalary
});




}
/// @nodoc
class __$JobItemModelCopyWithImpl<$Res>
    implements _$JobItemModelCopyWith<$Res> {
  __$JobItemModelCopyWithImpl(this._self, this._then);

  final _JobItemModel _self;
  final $Res Function(_JobItemModel) _then;

/// Create a copy of JobItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? companyId = freezed,Object? companyLogo = freezed,Object? companyName = freezed,Object? jobTitle = freezed,Object? jobDescription = freezed,Object? companyType = freezed,Object? gender = freezed,Object? nationality = freezed,Object? vacancyCount = freezed,Object? workingHours = freezed,Object? workingDays = freezed,Object? salaryToBeDiscussed = freezed,Object? experienceLevel = freezed,Object? education = freezed,Object? jobType = freezed,Object? locationPriority = freezed,Object? officeLocation = freezed,Object? isMultipleHires = freezed,Object? isUrgent = freezed,Object? isFeatured = freezed,Object? isSaved = freezed,Object? status = freezed,Object? createdAt = freezed,Object? activeSince = freezed,Object? minSalary = freezed,Object? maxSalary = freezed,Object? formattedSalary = freezed,}) {
  return _then(_JobItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,jobDescription: freezed == jobDescription ? _self.jobDescription : jobDescription // ignore: cast_nullable_to_non_nullable
as String?,companyType: freezed == companyType ? _self.companyType : companyType // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,vacancyCount: freezed == vacancyCount ? _self.vacancyCount : vacancyCount // ignore: cast_nullable_to_non_nullable
as int?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String?,workingDays: freezed == workingDays ? _self.workingDays : workingDays // ignore: cast_nullable_to_non_nullable
as String?,salaryToBeDiscussed: freezed == salaryToBeDiscussed ? _self.salaryToBeDiscussed : salaryToBeDiscussed // ignore: cast_nullable_to_non_nullable
as bool?,experienceLevel: freezed == experienceLevel ? _self.experienceLevel : experienceLevel // ignore: cast_nullable_to_non_nullable
as String?,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,jobType: freezed == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String?,locationPriority: freezed == locationPriority ? _self.locationPriority : locationPriority // ignore: cast_nullable_to_non_nullable
as String?,officeLocation: freezed == officeLocation ? _self.officeLocation : officeLocation // ignore: cast_nullable_to_non_nullable
as String?,isMultipleHires: freezed == isMultipleHires ? _self.isMultipleHires : isMultipleHires // ignore: cast_nullable_to_non_nullable
as bool?,isUrgent: freezed == isUrgent ? _self.isUrgent : isUrgent // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,isSaved: freezed == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,activeSince: freezed == activeSince ? _self.activeSince : activeSince // ignore: cast_nullable_to_non_nullable
as String?,minSalary: freezed == minSalary ? _self.minSalary : minSalary // ignore: cast_nullable_to_non_nullable
as num?,maxSalary: freezed == maxSalary ? _self.maxSalary : maxSalary // ignore: cast_nullable_to_non_nullable
as num?,formattedSalary: freezed == formattedSalary ? _self.formattedSalary : formattedSalary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
