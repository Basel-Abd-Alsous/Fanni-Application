// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackagesModel _$PackagesModelFromJson(Map<String, dynamic> json) {
  return _PackagesModel.fromJson(json);
}

/// @nodoc
mixin _$PackagesModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Packages>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagesModelCopyWith<PackagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesModelCopyWith<$Res> {
  factory $PackagesModelCopyWith(
          PackagesModel value, $Res Function(PackagesModel) then) =
      _$PackagesModelCopyWithImpl<$Res, PackagesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Packages>? data});
}

/// @nodoc
class _$PackagesModelCopyWithImpl<$Res, $Val extends PackagesModel>
    implements $PackagesModelCopyWith<$Res> {
  _$PackagesModelCopyWithImpl(this._value, this._then);

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
              as List<Packages>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackagesModelImplCopyWith<$Res>
    implements $PackagesModelCopyWith<$Res> {
  factory _$$PackagesModelImplCopyWith(
          _$PackagesModelImpl value, $Res Function(_$PackagesModelImpl) then) =
      __$$PackagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Packages>? data});
}

/// @nodoc
class __$$PackagesModelImplCopyWithImpl<$Res>
    extends _$PackagesModelCopyWithImpl<$Res, _$PackagesModelImpl>
    implements _$$PackagesModelImplCopyWith<$Res> {
  __$$PackagesModelImplCopyWithImpl(
      _$PackagesModelImpl _value, $Res Function(_$PackagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PackagesModelImpl(
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
              as List<Packages>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagesModelImpl implements _PackagesModel {
  const _$PackagesModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<Packages>? data})
      : _data = data;

  factory _$PackagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackagesModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Packages>? _data;
  @override
  @JsonKey(name: "data")
  List<Packages>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PackagesModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagesModelImpl &&
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
  _$$PackagesModelImplCopyWith<_$PackagesModelImpl> get copyWith =>
      __$$PackagesModelImplCopyWithImpl<_$PackagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagesModelImplToJson(
      this,
    );
  }
}

abstract class _PackagesModel implements PackagesModel {
  const factory _PackagesModel(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<Packages>? data}) = _$PackagesModelImpl;

  factory _PackagesModel.fromJson(Map<String, dynamic> json) =
      _$PackagesModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<Packages>? get data;
  @override
  @JsonKey(ignore: true)
  _$$PackagesModelImplCopyWith<_$PackagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Packages _$PackagesFromJson(Map<String, dynamic> json) {
  return _Packages.fromJson(json);
}

/// @nodoc
mixin _$Packages {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "description_ar")
  String? get descriptionAr => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "period")
  String? get period => throw _privateConstructorUsedError;
  @JsonKey(name: "features")
  String? get features => throw _privateConstructorUsedError;
  @JsonKey(name: "features_ar")
  String? get featuresAr => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagesCopyWith<Packages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesCopyWith<$Res> {
  factory $PackagesCopyWith(Packages value, $Res Function(Packages) then) =
      _$PackagesCopyWithImpl<$Res, Packages>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "description_ar") String? descriptionAr,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "period") String? period,
      @JsonKey(name: "features") String? features,
      @JsonKey(name: "features_ar") String? featuresAr,
      @JsonKey(name: "is_active") bool? isActive,
      bool? isSelected});
}

/// @nodoc
class _$PackagesCopyWithImpl<$Res, $Val extends Packages>
    implements $PackagesCopyWith<$Res> {
  _$PackagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? descriptionAr = freezed,
    Object? price = freezed,
    Object? period = freezed,
    Object? features = freezed,
    Object? featuresAr = freezed,
    Object? isActive = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionAr: freezed == descriptionAr
          ? _value.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as String?,
      featuresAr: freezed == featuresAr
          ? _value.featuresAr
          : featuresAr // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackagesImplCopyWith<$Res>
    implements $PackagesCopyWith<$Res> {
  factory _$$PackagesImplCopyWith(
          _$PackagesImpl value, $Res Function(_$PackagesImpl) then) =
      __$$PackagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "description_ar") String? descriptionAr,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "period") String? period,
      @JsonKey(name: "features") String? features,
      @JsonKey(name: "features_ar") String? featuresAr,
      @JsonKey(name: "is_active") bool? isActive,
      bool? isSelected});
}

/// @nodoc
class __$$PackagesImplCopyWithImpl<$Res>
    extends _$PackagesCopyWithImpl<$Res, _$PackagesImpl>
    implements _$$PackagesImplCopyWith<$Res> {
  __$$PackagesImplCopyWithImpl(
      _$PackagesImpl _value, $Res Function(_$PackagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? descriptionAr = freezed,
    Object? price = freezed,
    Object? period = freezed,
    Object? features = freezed,
    Object? featuresAr = freezed,
    Object? isActive = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$PackagesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionAr: freezed == descriptionAr
          ? _value.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as String?,
      featuresAr: freezed == featuresAr
          ? _value.featuresAr
          : featuresAr // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagesImpl implements _Packages {
  const _$PackagesImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "description_ar") this.descriptionAr,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "period") this.period,
      @JsonKey(name: "features") this.features,
      @JsonKey(name: "features_ar") this.featuresAr,
      @JsonKey(name: "is_active") this.isActive,
      this.isSelected = false});

  factory _$PackagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackagesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "description_ar")
  final String? descriptionAr;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "period")
  final String? period;
  @override
  @JsonKey(name: "features")
  final String? features;
  @override
  @JsonKey(name: "features_ar")
  final String? featuresAr;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey()
  final bool? isSelected;

  @override
  String toString() {
    return 'Packages(id: $id, name: $name, description: $description, descriptionAr: $descriptionAr, price: $price, period: $period, features: $features, featuresAr: $featuresAr, isActive: $isActive, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.featuresAr, featuresAr) ||
                other.featuresAr == featuresAr) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      descriptionAr, price, period, features, featuresAr, isActive, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagesImplCopyWith<_$PackagesImpl> get copyWith =>
      __$$PackagesImplCopyWithImpl<_$PackagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagesImplToJson(
      this,
    );
  }
}

abstract class _Packages implements Packages {
  const factory _Packages(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "description_ar") final String? descriptionAr,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "period") final String? period,
      @JsonKey(name: "features") final String? features,
      @JsonKey(name: "features_ar") final String? featuresAr,
      @JsonKey(name: "is_active") final bool? isActive,
      final bool? isSelected}) = _$PackagesImpl;

  factory _Packages.fromJson(Map<String, dynamic> json) =
      _$PackagesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "description_ar")
  String? get descriptionAr;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "period")
  String? get period;
  @override
  @JsonKey(name: "features")
  String? get features;
  @override
  @JsonKey(name: "features_ar")
  String? get featuresAr;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$PackagesImplCopyWith<_$PackagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
