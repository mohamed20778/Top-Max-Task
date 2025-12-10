// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_items_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedItemsResponseModel {

 String? get status; String? get message;@JsonKey(name: 'status_code') String? get statusCode; SavedItemsDataModel? get data;
/// Create a copy of SavedItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedItemsResponseModelCopyWith<SavedItemsResponseModel> get copyWith => _$SavedItemsResponseModelCopyWithImpl<SavedItemsResponseModel>(this as SavedItemsResponseModel, _$identity);

  /// Serializes this SavedItemsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedItemsResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'SavedItemsResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $SavedItemsResponseModelCopyWith<$Res>  {
  factory $SavedItemsResponseModelCopyWith(SavedItemsResponseModel value, $Res Function(SavedItemsResponseModel) _then) = _$SavedItemsResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, SavedItemsDataModel? data
});


$SavedItemsDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$SavedItemsResponseModelCopyWithImpl<$Res>
    implements $SavedItemsResponseModelCopyWith<$Res> {
  _$SavedItemsResponseModelCopyWithImpl(this._self, this._then);

  final SavedItemsResponseModel _self;
  final $Res Function(SavedItemsResponseModel) _then;

/// Create a copy of SavedItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SavedItemsDataModel?,
  ));
}
/// Create a copy of SavedItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedItemsDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SavedItemsDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SavedItemsResponseModel].
extension SavedItemsResponseModelPatterns on SavedItemsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedItemsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedItemsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedItemsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedItemsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedItemsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedItemsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SavedItemsDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedItemsResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SavedItemsDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _SavedItemsResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status,  String? message, @JsonKey(name: 'status_code')  String? statusCode,  SavedItemsDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _SavedItemsResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedItemsResponseModel implements SavedItemsResponseModel {
  const _SavedItemsResponseModel({this.status, this.message, @JsonKey(name: 'status_code') this.statusCode, this.data});
  factory _SavedItemsResponseModel.fromJson(Map<String, dynamic> json) => _$SavedItemsResponseModelFromJson(json);

@override final  String? status;
@override final  String? message;
@override@JsonKey(name: 'status_code') final  String? statusCode;
@override final  SavedItemsDataModel? data;

/// Create a copy of SavedItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedItemsResponseModelCopyWith<_SavedItemsResponseModel> get copyWith => __$SavedItemsResponseModelCopyWithImpl<_SavedItemsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedItemsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedItemsResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,statusCode,data);

@override
String toString() {
  return 'SavedItemsResponseModel(status: $status, message: $message, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SavedItemsResponseModelCopyWith<$Res> implements $SavedItemsResponseModelCopyWith<$Res> {
  factory _$SavedItemsResponseModelCopyWith(_SavedItemsResponseModel value, $Res Function(_SavedItemsResponseModel) _then) = __$SavedItemsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message,@JsonKey(name: 'status_code') String? statusCode, SavedItemsDataModel? data
});


@override $SavedItemsDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$SavedItemsResponseModelCopyWithImpl<$Res>
    implements _$SavedItemsResponseModelCopyWith<$Res> {
  __$SavedItemsResponseModelCopyWithImpl(this._self, this._then);

  final _SavedItemsResponseModel _self;
  final $Res Function(_SavedItemsResponseModel) _then;

/// Create a copy of SavedItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? statusCode = freezed,Object? data = freezed,}) {
  return _then(_SavedItemsResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SavedItemsDataModel?,
  ));
}

/// Create a copy of SavedItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedItemsDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SavedItemsDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SavedItemsDataModel {

@JsonKey(name: 'data') List<SavedItemModel>? get items; SavedPaginationModel? get pagination;
/// Create a copy of SavedItemsDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedItemsDataModelCopyWith<SavedItemsDataModel> get copyWith => _$SavedItemsDataModelCopyWithImpl<SavedItemsDataModel>(this as SavedItemsDataModel, _$identity);

  /// Serializes this SavedItemsDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedItemsDataModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'SavedItemsDataModel(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $SavedItemsDataModelCopyWith<$Res>  {
  factory $SavedItemsDataModelCopyWith(SavedItemsDataModel value, $Res Function(SavedItemsDataModel) _then) = _$SavedItemsDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<SavedItemModel>? items, SavedPaginationModel? pagination
});


$SavedPaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SavedItemsDataModelCopyWithImpl<$Res>
    implements $SavedItemsDataModelCopyWith<$Res> {
  _$SavedItemsDataModelCopyWithImpl(this._self, this._then);

  final SavedItemsDataModel _self;
  final $Res Function(SavedItemsDataModel) _then;

/// Create a copy of SavedItemsDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SavedItemModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SavedPaginationModel?,
  ));
}
/// Create a copy of SavedItemsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedPaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SavedPaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [SavedItemsDataModel].
extension SavedItemsDataModelPatterns on SavedItemsDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedItemsDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedItemsDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedItemsDataModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedItemsDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedItemsDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedItemsDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SavedItemModel>? items,  SavedPaginationModel? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedItemsDataModel() when $default != null:
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SavedItemModel>? items,  SavedPaginationModel? pagination)  $default,) {final _that = this;
switch (_that) {
case _SavedItemsDataModel():
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<SavedItemModel>? items,  SavedPaginationModel? pagination)?  $default,) {final _that = this;
switch (_that) {
case _SavedItemsDataModel() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedItemsDataModel implements SavedItemsDataModel {
  const _SavedItemsDataModel({@JsonKey(name: 'data') final  List<SavedItemModel>? items, this.pagination}): _items = items;
  factory _SavedItemsDataModel.fromJson(Map<String, dynamic> json) => _$SavedItemsDataModelFromJson(json);

 final  List<SavedItemModel>? _items;
@override@JsonKey(name: 'data') List<SavedItemModel>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  SavedPaginationModel? pagination;

/// Create a copy of SavedItemsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedItemsDataModelCopyWith<_SavedItemsDataModel> get copyWith => __$SavedItemsDataModelCopyWithImpl<_SavedItemsDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedItemsDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedItemsDataModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'SavedItemsDataModel(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$SavedItemsDataModelCopyWith<$Res> implements $SavedItemsDataModelCopyWith<$Res> {
  factory _$SavedItemsDataModelCopyWith(_SavedItemsDataModel value, $Res Function(_SavedItemsDataModel) _then) = __$SavedItemsDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<SavedItemModel>? items, SavedPaginationModel? pagination
});


@override $SavedPaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SavedItemsDataModelCopyWithImpl<$Res>
    implements _$SavedItemsDataModelCopyWith<$Res> {
  __$SavedItemsDataModelCopyWithImpl(this._self, this._then);

  final _SavedItemsDataModel _self;
  final $Res Function(_SavedItemsDataModel) _then;

/// Create a copy of SavedItemsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,Object? pagination = freezed,}) {
  return _then(_SavedItemsDataModel(
items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SavedItemModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SavedPaginationModel?,
  ));
}

/// Create a copy of SavedItemsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SavedPaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SavedPaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$SavedItemModel {

 int? get id;@JsonKey(name: 'job_title') String? get jobTitle;@JsonKey(name: 'company_id') int? get companyId;@JsonKey(name: 'company_logo') String? get companyLogo;@JsonKey(name: 'company_name') String? get companyName;@JsonKey(name: 'job_description') String? get jobDescription;@JsonKey(name: 'location_priority') String? get locationPriority; String? get status;@JsonKey(name: 'app_status') String? get appStatus;@JsonKey(name: 'min_salary') num? get minSalary;@JsonKey(name: 'max_salary') num? get maxSalary;@JsonKey(name: 'job_type') String? get jobType;@JsonKey(name: 'office_location') String? get officeLocation; String? get type;@JsonKey(name: 'is_multiple_hires') bool? get isMultipleHires;@JsonKey(name: 'is_urgent') bool? get isUrgent;@JsonKey(name: 'is_featured') bool? get isFeatured;@JsonKey(name: 'is_saved') bool? get isSaved;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'active_since') String? get activeSince;@JsonKey(name: 'formatted_salary') String? get formattedSalary; String? get title; String? get provider; String? get location; String? get duration;
/// Create a copy of SavedItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedItemModelCopyWith<SavedItemModel> get copyWith => _$SavedItemModelCopyWithImpl<SavedItemModel>(this as SavedItemModel, _$identity);

  /// Serializes this SavedItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.jobDescription, jobDescription) || other.jobDescription == jobDescription)&&(identical(other.locationPriority, locationPriority) || other.locationPriority == locationPriority)&&(identical(other.status, status) || other.status == status)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.minSalary, minSalary) || other.minSalary == minSalary)&&(identical(other.maxSalary, maxSalary) || other.maxSalary == maxSalary)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.officeLocation, officeLocation) || other.officeLocation == officeLocation)&&(identical(other.type, type) || other.type == type)&&(identical(other.isMultipleHires, isMultipleHires) || other.isMultipleHires == isMultipleHires)&&(identical(other.isUrgent, isUrgent) || other.isUrgent == isUrgent)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.activeSince, activeSince) || other.activeSince == activeSince)&&(identical(other.formattedSalary, formattedSalary) || other.formattedSalary == formattedSalary)&&(identical(other.title, title) || other.title == title)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.location, location) || other.location == location)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,jobTitle,companyId,companyLogo,companyName,jobDescription,locationPriority,status,appStatus,minSalary,maxSalary,jobType,officeLocation,type,isMultipleHires,isUrgent,isFeatured,isSaved,createdAt,activeSince,formattedSalary,title,provider,location,duration]);

@override
String toString() {
  return 'SavedItemModel(id: $id, jobTitle: $jobTitle, companyId: $companyId, companyLogo: $companyLogo, companyName: $companyName, jobDescription: $jobDescription, locationPriority: $locationPriority, status: $status, appStatus: $appStatus, minSalary: $minSalary, maxSalary: $maxSalary, jobType: $jobType, officeLocation: $officeLocation, type: $type, isMultipleHires: $isMultipleHires, isUrgent: $isUrgent, isFeatured: $isFeatured, isSaved: $isSaved, createdAt: $createdAt, activeSince: $activeSince, formattedSalary: $formattedSalary, title: $title, provider: $provider, location: $location, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $SavedItemModelCopyWith<$Res>  {
  factory $SavedItemModelCopyWith(SavedItemModel value, $Res Function(SavedItemModel) _then) = _$SavedItemModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'job_title') String? jobTitle,@JsonKey(name: 'company_id') int? companyId,@JsonKey(name: 'company_logo') String? companyLogo,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'job_description') String? jobDescription,@JsonKey(name: 'location_priority') String? locationPriority, String? status,@JsonKey(name: 'app_status') String? appStatus,@JsonKey(name: 'min_salary') num? minSalary,@JsonKey(name: 'max_salary') num? maxSalary,@JsonKey(name: 'job_type') String? jobType,@JsonKey(name: 'office_location') String? officeLocation, String? type,@JsonKey(name: 'is_multiple_hires') bool? isMultipleHires,@JsonKey(name: 'is_urgent') bool? isUrgent,@JsonKey(name: 'is_featured') bool? isFeatured,@JsonKey(name: 'is_saved') bool? isSaved,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'active_since') String? activeSince,@JsonKey(name: 'formatted_salary') String? formattedSalary, String? title, String? provider, String? location, String? duration
});




}
/// @nodoc
class _$SavedItemModelCopyWithImpl<$Res>
    implements $SavedItemModelCopyWith<$Res> {
  _$SavedItemModelCopyWithImpl(this._self, this._then);

  final SavedItemModel _self;
  final $Res Function(SavedItemModel) _then;

/// Create a copy of SavedItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? jobTitle = freezed,Object? companyId = freezed,Object? companyLogo = freezed,Object? companyName = freezed,Object? jobDescription = freezed,Object? locationPriority = freezed,Object? status = freezed,Object? appStatus = freezed,Object? minSalary = freezed,Object? maxSalary = freezed,Object? jobType = freezed,Object? officeLocation = freezed,Object? type = freezed,Object? isMultipleHires = freezed,Object? isUrgent = freezed,Object? isFeatured = freezed,Object? isSaved = freezed,Object? createdAt = freezed,Object? activeSince = freezed,Object? formattedSalary = freezed,Object? title = freezed,Object? provider = freezed,Object? location = freezed,Object? duration = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,jobDescription: freezed == jobDescription ? _self.jobDescription : jobDescription // ignore: cast_nullable_to_non_nullable
as String?,locationPriority: freezed == locationPriority ? _self.locationPriority : locationPriority // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as String?,minSalary: freezed == minSalary ? _self.minSalary : minSalary // ignore: cast_nullable_to_non_nullable
as num?,maxSalary: freezed == maxSalary ? _self.maxSalary : maxSalary // ignore: cast_nullable_to_non_nullable
as num?,jobType: freezed == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String?,officeLocation: freezed == officeLocation ? _self.officeLocation : officeLocation // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isMultipleHires: freezed == isMultipleHires ? _self.isMultipleHires : isMultipleHires // ignore: cast_nullable_to_non_nullable
as bool?,isUrgent: freezed == isUrgent ? _self.isUrgent : isUrgent // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,isSaved: freezed == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,activeSince: freezed == activeSince ? _self.activeSince : activeSince // ignore: cast_nullable_to_non_nullable
as String?,formattedSalary: freezed == formattedSalary ? _self.formattedSalary : formattedSalary // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedItemModel].
extension SavedItemModelPatterns on SavedItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'company_logo')  String? companyLogo, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'location_priority')  String? locationPriority,  String? status, @JsonKey(name: 'app_status')  String? appStatus, @JsonKey(name: 'min_salary')  num? minSalary, @JsonKey(name: 'max_salary')  num? maxSalary, @JsonKey(name: 'job_type')  String? jobType, @JsonKey(name: 'office_location')  String? officeLocation,  String? type, @JsonKey(name: 'is_multiple_hires')  bool? isMultipleHires, @JsonKey(name: 'is_urgent')  bool? isUrgent, @JsonKey(name: 'is_featured')  bool? isFeatured, @JsonKey(name: 'is_saved')  bool? isSaved, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'active_since')  String? activeSince, @JsonKey(name: 'formatted_salary')  String? formattedSalary,  String? title,  String? provider,  String? location,  String? duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedItemModel() when $default != null:
return $default(_that.id,_that.jobTitle,_that.companyId,_that.companyLogo,_that.companyName,_that.jobDescription,_that.locationPriority,_that.status,_that.appStatus,_that.minSalary,_that.maxSalary,_that.jobType,_that.officeLocation,_that.type,_that.isMultipleHires,_that.isUrgent,_that.isFeatured,_that.isSaved,_that.createdAt,_that.activeSince,_that.formattedSalary,_that.title,_that.provider,_that.location,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'company_logo')  String? companyLogo, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'location_priority')  String? locationPriority,  String? status, @JsonKey(name: 'app_status')  String? appStatus, @JsonKey(name: 'min_salary')  num? minSalary, @JsonKey(name: 'max_salary')  num? maxSalary, @JsonKey(name: 'job_type')  String? jobType, @JsonKey(name: 'office_location')  String? officeLocation,  String? type, @JsonKey(name: 'is_multiple_hires')  bool? isMultipleHires, @JsonKey(name: 'is_urgent')  bool? isUrgent, @JsonKey(name: 'is_featured')  bool? isFeatured, @JsonKey(name: 'is_saved')  bool? isSaved, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'active_since')  String? activeSince, @JsonKey(name: 'formatted_salary')  String? formattedSalary,  String? title,  String? provider,  String? location,  String? duration)  $default,) {final _that = this;
switch (_that) {
case _SavedItemModel():
return $default(_that.id,_that.jobTitle,_that.companyId,_that.companyLogo,_that.companyName,_that.jobDescription,_that.locationPriority,_that.status,_that.appStatus,_that.minSalary,_that.maxSalary,_that.jobType,_that.officeLocation,_that.type,_that.isMultipleHires,_that.isUrgent,_that.isFeatured,_that.isSaved,_that.createdAt,_that.activeSince,_that.formattedSalary,_that.title,_that.provider,_that.location,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'job_title')  String? jobTitle, @JsonKey(name: 'company_id')  int? companyId, @JsonKey(name: 'company_logo')  String? companyLogo, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'job_description')  String? jobDescription, @JsonKey(name: 'location_priority')  String? locationPriority,  String? status, @JsonKey(name: 'app_status')  String? appStatus, @JsonKey(name: 'min_salary')  num? minSalary, @JsonKey(name: 'max_salary')  num? maxSalary, @JsonKey(name: 'job_type')  String? jobType, @JsonKey(name: 'office_location')  String? officeLocation,  String? type, @JsonKey(name: 'is_multiple_hires')  bool? isMultipleHires, @JsonKey(name: 'is_urgent')  bool? isUrgent, @JsonKey(name: 'is_featured')  bool? isFeatured, @JsonKey(name: 'is_saved')  bool? isSaved, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'active_since')  String? activeSince, @JsonKey(name: 'formatted_salary')  String? formattedSalary,  String? title,  String? provider,  String? location,  String? duration)?  $default,) {final _that = this;
switch (_that) {
case _SavedItemModel() when $default != null:
return $default(_that.id,_that.jobTitle,_that.companyId,_that.companyLogo,_that.companyName,_that.jobDescription,_that.locationPriority,_that.status,_that.appStatus,_that.minSalary,_that.maxSalary,_that.jobType,_that.officeLocation,_that.type,_that.isMultipleHires,_that.isUrgent,_that.isFeatured,_that.isSaved,_that.createdAt,_that.activeSince,_that.formattedSalary,_that.title,_that.provider,_that.location,_that.duration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedItemModel implements SavedItemModel {
  const _SavedItemModel({this.id, @JsonKey(name: 'job_title') this.jobTitle, @JsonKey(name: 'company_id') this.companyId, @JsonKey(name: 'company_logo') this.companyLogo, @JsonKey(name: 'company_name') this.companyName, @JsonKey(name: 'job_description') this.jobDescription, @JsonKey(name: 'location_priority') this.locationPriority, this.status, @JsonKey(name: 'app_status') this.appStatus, @JsonKey(name: 'min_salary') this.minSalary, @JsonKey(name: 'max_salary') this.maxSalary, @JsonKey(name: 'job_type') this.jobType, @JsonKey(name: 'office_location') this.officeLocation, this.type, @JsonKey(name: 'is_multiple_hires') this.isMultipleHires, @JsonKey(name: 'is_urgent') this.isUrgent, @JsonKey(name: 'is_featured') this.isFeatured, @JsonKey(name: 'is_saved') this.isSaved, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'active_since') this.activeSince, @JsonKey(name: 'formatted_salary') this.formattedSalary, this.title, this.provider, this.location, this.duration});
  factory _SavedItemModel.fromJson(Map<String, dynamic> json) => _$SavedItemModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'job_title') final  String? jobTitle;
@override@JsonKey(name: 'company_id') final  int? companyId;
@override@JsonKey(name: 'company_logo') final  String? companyLogo;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override@JsonKey(name: 'job_description') final  String? jobDescription;
@override@JsonKey(name: 'location_priority') final  String? locationPriority;
@override final  String? status;
@override@JsonKey(name: 'app_status') final  String? appStatus;
@override@JsonKey(name: 'min_salary') final  num? minSalary;
@override@JsonKey(name: 'max_salary') final  num? maxSalary;
@override@JsonKey(name: 'job_type') final  String? jobType;
@override@JsonKey(name: 'office_location') final  String? officeLocation;
@override final  String? type;
@override@JsonKey(name: 'is_multiple_hires') final  bool? isMultipleHires;
@override@JsonKey(name: 'is_urgent') final  bool? isUrgent;
@override@JsonKey(name: 'is_featured') final  bool? isFeatured;
@override@JsonKey(name: 'is_saved') final  bool? isSaved;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'active_since') final  String? activeSince;
@override@JsonKey(name: 'formatted_salary') final  String? formattedSalary;
@override final  String? title;
@override final  String? provider;
@override final  String? location;
@override final  String? duration;

/// Create a copy of SavedItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedItemModelCopyWith<_SavedItemModel> get copyWith => __$SavedItemModelCopyWithImpl<_SavedItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.jobDescription, jobDescription) || other.jobDescription == jobDescription)&&(identical(other.locationPriority, locationPriority) || other.locationPriority == locationPriority)&&(identical(other.status, status) || other.status == status)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.minSalary, minSalary) || other.minSalary == minSalary)&&(identical(other.maxSalary, maxSalary) || other.maxSalary == maxSalary)&&(identical(other.jobType, jobType) || other.jobType == jobType)&&(identical(other.officeLocation, officeLocation) || other.officeLocation == officeLocation)&&(identical(other.type, type) || other.type == type)&&(identical(other.isMultipleHires, isMultipleHires) || other.isMultipleHires == isMultipleHires)&&(identical(other.isUrgent, isUrgent) || other.isUrgent == isUrgent)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.activeSince, activeSince) || other.activeSince == activeSince)&&(identical(other.formattedSalary, formattedSalary) || other.formattedSalary == formattedSalary)&&(identical(other.title, title) || other.title == title)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.location, location) || other.location == location)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,jobTitle,companyId,companyLogo,companyName,jobDescription,locationPriority,status,appStatus,minSalary,maxSalary,jobType,officeLocation,type,isMultipleHires,isUrgent,isFeatured,isSaved,createdAt,activeSince,formattedSalary,title,provider,location,duration]);

@override
String toString() {
  return 'SavedItemModel(id: $id, jobTitle: $jobTitle, companyId: $companyId, companyLogo: $companyLogo, companyName: $companyName, jobDescription: $jobDescription, locationPriority: $locationPriority, status: $status, appStatus: $appStatus, minSalary: $minSalary, maxSalary: $maxSalary, jobType: $jobType, officeLocation: $officeLocation, type: $type, isMultipleHires: $isMultipleHires, isUrgent: $isUrgent, isFeatured: $isFeatured, isSaved: $isSaved, createdAt: $createdAt, activeSince: $activeSince, formattedSalary: $formattedSalary, title: $title, provider: $provider, location: $location, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$SavedItemModelCopyWith<$Res> implements $SavedItemModelCopyWith<$Res> {
  factory _$SavedItemModelCopyWith(_SavedItemModel value, $Res Function(_SavedItemModel) _then) = __$SavedItemModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'job_title') String? jobTitle,@JsonKey(name: 'company_id') int? companyId,@JsonKey(name: 'company_logo') String? companyLogo,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'job_description') String? jobDescription,@JsonKey(name: 'location_priority') String? locationPriority, String? status,@JsonKey(name: 'app_status') String? appStatus,@JsonKey(name: 'min_salary') num? minSalary,@JsonKey(name: 'max_salary') num? maxSalary,@JsonKey(name: 'job_type') String? jobType,@JsonKey(name: 'office_location') String? officeLocation, String? type,@JsonKey(name: 'is_multiple_hires') bool? isMultipleHires,@JsonKey(name: 'is_urgent') bool? isUrgent,@JsonKey(name: 'is_featured') bool? isFeatured,@JsonKey(name: 'is_saved') bool? isSaved,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'active_since') String? activeSince,@JsonKey(name: 'formatted_salary') String? formattedSalary, String? title, String? provider, String? location, String? duration
});




}
/// @nodoc
class __$SavedItemModelCopyWithImpl<$Res>
    implements _$SavedItemModelCopyWith<$Res> {
  __$SavedItemModelCopyWithImpl(this._self, this._then);

  final _SavedItemModel _self;
  final $Res Function(_SavedItemModel) _then;

/// Create a copy of SavedItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? jobTitle = freezed,Object? companyId = freezed,Object? companyLogo = freezed,Object? companyName = freezed,Object? jobDescription = freezed,Object? locationPriority = freezed,Object? status = freezed,Object? appStatus = freezed,Object? minSalary = freezed,Object? maxSalary = freezed,Object? jobType = freezed,Object? officeLocation = freezed,Object? type = freezed,Object? isMultipleHires = freezed,Object? isUrgent = freezed,Object? isFeatured = freezed,Object? isSaved = freezed,Object? createdAt = freezed,Object? activeSince = freezed,Object? formattedSalary = freezed,Object? title = freezed,Object? provider = freezed,Object? location = freezed,Object? duration = freezed,}) {
  return _then(_SavedItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int?,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,jobDescription: freezed == jobDescription ? _self.jobDescription : jobDescription // ignore: cast_nullable_to_non_nullable
as String?,locationPriority: freezed == locationPriority ? _self.locationPriority : locationPriority // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as String?,minSalary: freezed == minSalary ? _self.minSalary : minSalary // ignore: cast_nullable_to_non_nullable
as num?,maxSalary: freezed == maxSalary ? _self.maxSalary : maxSalary // ignore: cast_nullable_to_non_nullable
as num?,jobType: freezed == jobType ? _self.jobType : jobType // ignore: cast_nullable_to_non_nullable
as String?,officeLocation: freezed == officeLocation ? _self.officeLocation : officeLocation // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isMultipleHires: freezed == isMultipleHires ? _self.isMultipleHires : isMultipleHires // ignore: cast_nullable_to_non_nullable
as bool?,isUrgent: freezed == isUrgent ? _self.isUrgent : isUrgent // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,isSaved: freezed == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,activeSince: freezed == activeSince ? _self.activeSince : activeSince // ignore: cast_nullable_to_non_nullable
as String?,formattedSalary: freezed == formattedSalary ? _self.formattedSalary : formattedSalary // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SavedPaginationModel {

 int? get total;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'last_page') int? get lastPage; int? get from; int? get to;@JsonKey(name: 'has_more_pages') bool? get hasMorePages;
/// Create a copy of SavedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedPaginationModelCopyWith<SavedPaginationModel> get copyWith => _$SavedPaginationModelCopyWithImpl<SavedPaginationModel>(this as SavedPaginationModel, _$identity);

  /// Serializes this SavedPaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedPaginationModel&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,perPage,currentPage,lastPage,from,to,hasMorePages);

@override
String toString() {
  return 'SavedPaginationModel(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to, hasMorePages: $hasMorePages)';
}


}

/// @nodoc
abstract mixin class $SavedPaginationModelCopyWith<$Res>  {
  factory $SavedPaginationModelCopyWith(SavedPaginationModel value, $Res Function(SavedPaginationModel) _then) = _$SavedPaginationModelCopyWithImpl;
@useResult
$Res call({
 int? total,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to,@JsonKey(name: 'has_more_pages') bool? hasMorePages
});




}
/// @nodoc
class _$SavedPaginationModelCopyWithImpl<$Res>
    implements $SavedPaginationModelCopyWith<$Res> {
  _$SavedPaginationModelCopyWithImpl(this._self, this._then);

  final SavedPaginationModel _self;
  final $Res Function(SavedPaginationModel) _then;

/// Create a copy of SavedPaginationModel
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


/// Adds pattern-matching-related methods to [SavedPaginationModel].
extension SavedPaginationModelPatterns on SavedPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedPaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedPaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedPaginationModel() when $default != null:
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
case _SavedPaginationModel() when $default != null:
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
case _SavedPaginationModel():
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
case _SavedPaginationModel() when $default != null:
return $default(_that.total,_that.perPage,_that.currentPage,_that.lastPage,_that.from,_that.to,_that.hasMorePages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedPaginationModel implements SavedPaginationModel {
  const _SavedPaginationModel({this.total, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'last_page') this.lastPage, this.from, this.to, @JsonKey(name: 'has_more_pages') this.hasMorePages});
  factory _SavedPaginationModel.fromJson(Map<String, dynamic> json) => _$SavedPaginationModelFromJson(json);

@override final  int? total;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override final  int? from;
@override final  int? to;
@override@JsonKey(name: 'has_more_pages') final  bool? hasMorePages;

/// Create a copy of SavedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedPaginationModelCopyWith<_SavedPaginationModel> get copyWith => __$SavedPaginationModelCopyWithImpl<_SavedPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedPaginationModel&&(identical(other.total, total) || other.total == total)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,perPage,currentPage,lastPage,from,to,hasMorePages);

@override
String toString() {
  return 'SavedPaginationModel(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, from: $from, to: $to, hasMorePages: $hasMorePages)';
}


}

/// @nodoc
abstract mixin class _$SavedPaginationModelCopyWith<$Res> implements $SavedPaginationModelCopyWith<$Res> {
  factory _$SavedPaginationModelCopyWith(_SavedPaginationModel value, $Res Function(_SavedPaginationModel) _then) = __$SavedPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 int? total,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'last_page') int? lastPage, int? from, int? to,@JsonKey(name: 'has_more_pages') bool? hasMorePages
});




}
/// @nodoc
class __$SavedPaginationModelCopyWithImpl<$Res>
    implements _$SavedPaginationModelCopyWith<$Res> {
  __$SavedPaginationModelCopyWithImpl(this._self, this._then);

  final _SavedPaginationModel _self;
  final $Res Function(_SavedPaginationModel) _then;

/// Create a copy of SavedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? perPage = freezed,Object? currentPage = freezed,Object? lastPage = freezed,Object? from = freezed,Object? to = freezed,Object? hasMorePages = freezed,}) {
  return _then(_SavedPaginationModel(
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
