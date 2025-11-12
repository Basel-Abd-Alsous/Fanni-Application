// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliq_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CliqInfoModel _$CliqInfoModelFromJson(Map<String, dynamic> json) {
  return _CliqInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CliqInfoModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CliqInfo>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CliqInfoModelCopyWith<CliqInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CliqInfoModelCopyWith<$Res> {
  factory $CliqInfoModelCopyWith(
          CliqInfoModel value, $Res Function(CliqInfoModel) then) =
      _$CliqInfoModelCopyWithImpl<$Res, CliqInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<CliqInfo>? data});
}

/// @nodoc
class _$CliqInfoModelCopyWithImpl<$Res, $Val extends CliqInfoModel>
    implements $CliqInfoModelCopyWith<$Res> {
  _$CliqInfoModelCopyWithImpl(this._value, this._then);

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
              as List<CliqInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CliqInfoModelImplCopyWith<$Res>
    implements $CliqInfoModelCopyWith<$Res> {
  factory _$$CliqInfoModelImplCopyWith(
          _$CliqInfoModelImpl value, $Res Function(_$CliqInfoModelImpl) then) =
      __$$CliqInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<CliqInfo>? data});
}

/// @nodoc
class __$$CliqInfoModelImplCopyWithImpl<$Res>
    extends _$CliqInfoModelCopyWithImpl<$Res, _$CliqInfoModelImpl>
    implements _$$CliqInfoModelImplCopyWith<$Res> {
  __$$CliqInfoModelImplCopyWithImpl(
      _$CliqInfoModelImpl _value, $Res Function(_$CliqInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CliqInfoModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CliqInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CliqInfoModelImpl implements _CliqInfoModel {
  const _$CliqInfoModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<CliqInfo>? data})
      : _data = data;

  factory _$CliqInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliqInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<CliqInfo>? _data;
  @override
  @JsonKey(name: "data")
  List<CliqInfo>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CliqInfoModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CliqInfoModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CliqInfoModelImplCopyWith<_$CliqInfoModelImpl> get copyWith =>
      __$$CliqInfoModelImplCopyWithImpl<_$CliqInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CliqInfoModelImplToJson(
      this,
    );
  }
}

abstract class _CliqInfoModel implements CliqInfoModel {
  const factory _CliqInfoModel(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<CliqInfo>? data}) = _$CliqInfoModelImpl;

  factory _CliqInfoModel.fromJson(Map<String, dynamic> json) =
      _$CliqInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<CliqInfo>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CliqInfoModelImplCopyWith<_$CliqInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CliqInfo _$CliqInfoFromJson(Map<String, dynamic> json) {
  return _CliqInfo.fromJson(json);
}

/// @nodoc
mixin _$CliqInfo {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "second_phone_number")
  String? get secondPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "click_number")
  String? get clickNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "click_name")
  String? get clickName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CliqInfoCopyWith<CliqInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CliqInfoCopyWith<$Res> {
  factory $CliqInfoCopyWith(CliqInfo value, $Res Function(CliqInfo) then) =
      _$CliqInfoCopyWithImpl<$Res, CliqInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "second_phone_number") String? secondPhoneNumber,
      @JsonKey(name: "click_number") String? clickNumber,
      @JsonKey(name: "click_name") String? clickName});
}

/// @nodoc
class _$CliqInfoCopyWithImpl<$Res, $Val extends CliqInfo>
    implements $CliqInfoCopyWith<$Res> {
  _$CliqInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? secondPhoneNumber = freezed,
    Object? clickNumber = freezed,
    Object? clickName = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      secondPhoneNumber: freezed == secondPhoneNumber
          ? _value.secondPhoneNumber
          : secondPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clickNumber: freezed == clickNumber
          ? _value.clickNumber
          : clickNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clickName: freezed == clickName
          ? _value.clickName
          : clickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CliqInfoImplCopyWith<$Res>
    implements $CliqInfoCopyWith<$Res> {
  factory _$$CliqInfoImplCopyWith(
          _$CliqInfoImpl value, $Res Function(_$CliqInfoImpl) then) =
      __$$CliqInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "second_phone_number") String? secondPhoneNumber,
      @JsonKey(name: "click_number") String? clickNumber,
      @JsonKey(name: "click_name") String? clickName});
}

/// @nodoc
class __$$CliqInfoImplCopyWithImpl<$Res>
    extends _$CliqInfoCopyWithImpl<$Res, _$CliqInfoImpl>
    implements _$$CliqInfoImplCopyWith<$Res> {
  __$$CliqInfoImplCopyWithImpl(
      _$CliqInfoImpl _value, $Res Function(_$CliqInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? secondPhoneNumber = freezed,
    Object? clickNumber = freezed,
    Object? clickName = freezed,
  }) {
    return _then(_$CliqInfoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      secondPhoneNumber: freezed == secondPhoneNumber
          ? _value.secondPhoneNumber
          : secondPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clickNumber: freezed == clickNumber
          ? _value.clickNumber
          : clickNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clickName: freezed == clickName
          ? _value.clickName
          : clickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CliqInfoImpl implements _CliqInfo {
  const _$CliqInfoImpl(
      {@JsonKey(name: "email") this.email,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "second_phone_number") this.secondPhoneNumber,
      @JsonKey(name: "click_number") this.clickNumber,
      @JsonKey(name: "click_name") this.clickName});

  factory _$CliqInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliqInfoImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  @JsonKey(name: "second_phone_number")
  final String? secondPhoneNumber;
  @override
  @JsonKey(name: "click_number")
  final String? clickNumber;
  @override
  @JsonKey(name: "click_name")
  final String? clickName;

  @override
  String toString() {
    return 'CliqInfo(email: $email, phoneNumber: $phoneNumber, secondPhoneNumber: $secondPhoneNumber, clickNumber: $clickNumber, clickName: $clickName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CliqInfoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.secondPhoneNumber, secondPhoneNumber) ||
                other.secondPhoneNumber == secondPhoneNumber) &&
            (identical(other.clickNumber, clickNumber) ||
                other.clickNumber == clickNumber) &&
            (identical(other.clickName, clickName) ||
                other.clickName == clickName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, phoneNumber,
      secondPhoneNumber, clickNumber, clickName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CliqInfoImplCopyWith<_$CliqInfoImpl> get copyWith =>
      __$$CliqInfoImplCopyWithImpl<_$CliqInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CliqInfoImplToJson(
      this,
    );
  }
}

abstract class _CliqInfo implements CliqInfo {
  const factory _CliqInfo(
      {@JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      @JsonKey(name: "second_phone_number") final String? secondPhoneNumber,
      @JsonKey(name: "click_number") final String? clickNumber,
      @JsonKey(name: "click_name") final String? clickName}) = _$CliqInfoImpl;

  factory _CliqInfo.fromJson(Map<String, dynamic> json) =
      _$CliqInfoImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: "second_phone_number")
  String? get secondPhoneNumber;
  @override
  @JsonKey(name: "click_number")
  String? get clickNumber;
  @override
  @JsonKey(name: "click_name")
  String? get clickName;
  @override
  @JsonKey(ignore: true)
  _$$CliqInfoImplCopyWith<_$CliqInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
