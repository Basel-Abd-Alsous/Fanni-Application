// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerProfileModel _$CustomerProfileModelFromJson(Map<String, dynamic> json) {
  return _CustomerProfileModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerProfileModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  CustomerProfile? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerProfileModelCopyWith<CustomerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProfileModelCopyWith<$Res> {
  factory $CustomerProfileModelCopyWith(CustomerProfileModel value,
          $Res Function(CustomerProfileModel) then) =
      _$CustomerProfileModelCopyWithImpl<$Res, CustomerProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") CustomerProfile? data});

  $CustomerProfileCopyWith<$Res>? get data;
}

/// @nodoc
class _$CustomerProfileModelCopyWithImpl<$Res,
        $Val extends CustomerProfileModel>
    implements $CustomerProfileModelCopyWith<$Res> {
  _$CustomerProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerProfile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerProfileCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CustomerProfileCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerProfileModelImplCopyWith<$Res>
    implements $CustomerProfileModelCopyWith<$Res> {
  factory _$$CustomerProfileModelImplCopyWith(_$CustomerProfileModelImpl value,
          $Res Function(_$CustomerProfileModelImpl) then) =
      __$$CustomerProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") CustomerProfile? data});

  @override
  $CustomerProfileCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CustomerProfileModelImplCopyWithImpl<$Res>
    extends _$CustomerProfileModelCopyWithImpl<$Res, _$CustomerProfileModelImpl>
    implements _$$CustomerProfileModelImplCopyWith<$Res> {
  __$$CustomerProfileModelImplCopyWithImpl(_$CustomerProfileModelImpl _value,
      $Res Function(_$CustomerProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CustomerProfileModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerProfileModelImpl implements _CustomerProfileModel {
  const _$CustomerProfileModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$CustomerProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final CustomerProfile? data;

  @override
  String toString() {
    return 'CustomerProfileModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerProfileModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerProfileModelImplCopyWith<_$CustomerProfileModelImpl>
      get copyWith =>
          __$$CustomerProfileModelImplCopyWithImpl<_$CustomerProfileModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerProfileModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerProfileModel implements CustomerProfileModel {
  const factory _CustomerProfileModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final CustomerProfile? data}) =
      _$CustomerProfileModelImpl;

  factory _CustomerProfileModel.fromJson(Map<String, dynamic> json) =
      _$CustomerProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  CustomerProfile? get data;
  @override
  @JsonKey(ignore: true)
  _$$CustomerProfileModelImplCopyWith<_$CustomerProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerProfile _$CustomerProfileFromJson(Map<String, dynamic> json) {
  return _CustomerProfile.fromJson(json);
}

/// @nodoc
mixin _$CustomerProfile {
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "email")
  dynamic get email => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerProfileCopyWith<CustomerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProfileCopyWith<$Res> {
  factory $CustomerProfileCopyWith(
          CustomerProfile value, $Res Function(CustomerProfile) then) =
      _$CustomerProfileCopyWithImpl<$Res, CustomerProfile>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "mobile_number") String? mobileNumber,
      @HiveField(2) @JsonKey(name: "email") dynamic email,
      @HiveField(3) @JsonKey(name: "name") String? name,
      @HiveField(4) @JsonKey(name: "profile_pic") String? profilePic});
}

/// @nodoc
class _$CustomerProfileCopyWithImpl<$Res, $Val extends CustomerProfile>
    implements $CustomerProfileCopyWith<$Res> {
  _$CustomerProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobileNumber = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerProfileImplCopyWith<$Res>
    implements $CustomerProfileCopyWith<$Res> {
  factory _$$CustomerProfileImplCopyWith(_$CustomerProfileImpl value,
          $Res Function(_$CustomerProfileImpl) then) =
      __$$CustomerProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "mobile_number") String? mobileNumber,
      @HiveField(2) @JsonKey(name: "email") dynamic email,
      @HiveField(3) @JsonKey(name: "name") String? name,
      @HiveField(4) @JsonKey(name: "profile_pic") String? profilePic});
}

/// @nodoc
class __$$CustomerProfileImplCopyWithImpl<$Res>
    extends _$CustomerProfileCopyWithImpl<$Res, _$CustomerProfileImpl>
    implements _$$CustomerProfileImplCopyWith<$Res> {
  __$$CustomerProfileImplCopyWithImpl(
      _$CustomerProfileImpl _value, $Res Function(_$CustomerProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobileNumber = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_$CustomerProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerProfileImpl implements _CustomerProfile {
  const _$CustomerProfileImpl(
      {@HiveField(0) @JsonKey(name: "id") this.id,
      @HiveField(1) @JsonKey(name: "mobile_number") this.mobileNumber,
      @HiveField(2) @JsonKey(name: "email") this.email,
      @HiveField(3) @JsonKey(name: "name") this.name,
      @HiveField(4) @JsonKey(name: "profile_pic") this.profilePic});

  factory _$CustomerProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerProfileImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  @HiveField(2)
  @JsonKey(name: "email")
  final dynamic email;
  @override
  @HiveField(3)
  @JsonKey(name: "name")
  final String? name;
  @override
  @HiveField(4)
  @JsonKey(name: "profile_pic")
  final String? profilePic;

  @override
  String toString() {
    return 'CustomerProfile(id: $id, mobileNumber: $mobileNumber, email: $email, name: $name, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mobileNumber,
      const DeepCollectionEquality().hash(email), name, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerProfileImplCopyWith<_$CustomerProfileImpl> get copyWith =>
      __$$CustomerProfileImplCopyWithImpl<_$CustomerProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerProfileImplToJson(
      this,
    );
  }
}

abstract class _CustomerProfile implements CustomerProfile {
  const factory _CustomerProfile(
      {@HiveField(0) @JsonKey(name: "id") final int? id,
      @HiveField(1) @JsonKey(name: "mobile_number") final String? mobileNumber,
      @HiveField(2) @JsonKey(name: "email") final dynamic email,
      @HiveField(3) @JsonKey(name: "name") final String? name,
      @HiveField(4)
      @JsonKey(name: "profile_pic")
      final String? profilePic}) = _$CustomerProfileImpl;

  factory _CustomerProfile.fromJson(Map<String, dynamic> json) =
      _$CustomerProfileImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  @HiveField(2)
  @JsonKey(name: "email")
  dynamic get email;
  @override
  @HiveField(3)
  @JsonKey(name: "name")
  String? get name;
  @override
  @HiveField(4)
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$CustomerProfileImplCopyWith<_$CustomerProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
