// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvidersModel _$ProvidersModelFromJson(Map<String, dynamic> json) {
  return _ProvidersModel.fromJson(json);
}

/// @nodoc
mixin _$ProvidersModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvidersModelCopyWith<ProvidersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvidersModelCopyWith<$Res> {
  factory $ProvidersModelCopyWith(
          ProvidersModel value, $Res Function(ProvidersModel) then) =
      _$ProvidersModelCopyWithImpl<$Res, ProvidersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProvidersModelCopyWithImpl<$Res, $Val extends ProvidersModel>
    implements $ProvidersModelCopyWith<$Res> {
  _$ProvidersModelCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProvidersModelImplCopyWith<$Res>
    implements $ProvidersModelCopyWith<$Res> {
  factory _$$ProvidersModelImplCopyWith(_$ProvidersModelImpl value,
          $Res Function(_$ProvidersModelImpl) then) =
      __$$ProvidersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProvidersModelImplCopyWithImpl<$Res>
    extends _$ProvidersModelCopyWithImpl<$Res, _$ProvidersModelImpl>
    implements _$$ProvidersModelImplCopyWith<$Res> {
  __$$ProvidersModelImplCopyWithImpl(
      _$ProvidersModelImpl _value, $Res Function(_$ProvidersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProvidersModelImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvidersModelImpl implements _ProvidersModel {
  const _$ProvidersModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$ProvidersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvidersModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'ProvidersModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvidersModelImpl &&
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
  _$$ProvidersModelImplCopyWith<_$ProvidersModelImpl> get copyWith =>
      __$$ProvidersModelImplCopyWithImpl<_$ProvidersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvidersModelImplToJson(
      this,
    );
  }
}

abstract class _ProvidersModel implements ProvidersModel {
  const factory _ProvidersModel(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final Data? data}) = _$ProvidersModelImpl;

  factory _ProvidersModel.fromJson(Map<String, dynamic> json) =
      _$ProvidersModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProvidersModelImplCopyWith<_$ProvidersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "data")
  List<Providers>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "pagination")
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<Providers>? data,
      @JsonKey(name: "pagination") Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Providers>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<Providers>? data,
      @JsonKey(name: "pagination") Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$DataImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Providers>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "data") final List<Providers>? data,
      @JsonKey(name: "pagination") this.pagination})
      : _data = data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Providers>? _data;
  @override
  @JsonKey(name: "data")
  List<Providers>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;

  @override
  String toString() {
    return 'Data(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "data") final List<Providers>? data,
      @JsonKey(name: "pagination") final Pagination? pagination}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<Providers>? get data;
  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Providers _$ProvidersFromJson(Map<String, dynamic> json) {
  return _Providers.fromJson(json);
}

/// @nodoc
mixin _$Providers {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "inspection_fee")
  String? get inspectionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "city_id")
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name")
  String? get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: "cover_image")
  String? get coverImage => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<ImageProviders>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "call_count")
  int? get callCount => throw _privateConstructorUsedError;
  @JsonKey(name: "whatsapp_count")
  int? get whatsappCount => throw _privateConstructorUsedError;
  @JsonKey(name: "view_count")
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: "average_rating")
  int? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "ratings")
  List<RatingProviders>? get ratings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvidersCopyWith<Providers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvidersCopyWith<$Res> {
  factory $ProvidersCopyWith(Providers value, $Res Function(Providers) then) =
      _$ProvidersCopyWithImpl<$Res, Providers>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "mobile_number") String? mobileNumber,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "inspection_fee") String? inspectionFee,
      @JsonKey(name: "city_id") int? cityId,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "cover_image") String? coverImage,
      @JsonKey(name: "images") List<ImageProviders>? images,
      @JsonKey(name: "call_count") int? callCount,
      @JsonKey(name: "whatsapp_count") int? whatsappCount,
      @JsonKey(name: "view_count") int? viewCount,
      @JsonKey(name: "average_rating") int? averageRating,
      @JsonKey(name: "ratings") List<RatingProviders>? ratings});
}

/// @nodoc
class _$ProvidersCopyWithImpl<$Res, $Val extends Providers>
    implements $ProvidersCopyWith<$Res> {
  _$ProvidersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobileNumber = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? inspectionFee = freezed,
    Object? cityId = freezed,
    Object? cityName = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? profilePic = freezed,
    Object? coverImage = freezed,
    Object? images = freezed,
    Object? callCount = freezed,
    Object? whatsappCount = freezed,
    Object? viewCount = freezed,
    Object? averageRating = freezed,
    Object? ratings = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionFee: freezed == inspectionFee
          ? _value.inspectionFee
          : inspectionFee // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProviders>?,
      callCount: freezed == callCount
          ? _value.callCount
          : callCount // ignore: cast_nullable_to_non_nullable
              as int?,
      whatsappCount: freezed == whatsappCount
          ? _value.whatsappCount
          : whatsappCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingProviders>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvidersImplCopyWith<$Res>
    implements $ProvidersCopyWith<$Res> {
  factory _$$ProvidersImplCopyWith(
          _$ProvidersImpl value, $Res Function(_$ProvidersImpl) then) =
      __$$ProvidersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "mobile_number") String? mobileNumber,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "inspection_fee") String? inspectionFee,
      @JsonKey(name: "city_id") int? cityId,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "profile_pic") String? profilePic,
      @JsonKey(name: "cover_image") String? coverImage,
      @JsonKey(name: "images") List<ImageProviders>? images,
      @JsonKey(name: "call_count") int? callCount,
      @JsonKey(name: "whatsapp_count") int? whatsappCount,
      @JsonKey(name: "view_count") int? viewCount,
      @JsonKey(name: "average_rating") int? averageRating,
      @JsonKey(name: "ratings") List<RatingProviders>? ratings});
}

/// @nodoc
class __$$ProvidersImplCopyWithImpl<$Res>
    extends _$ProvidersCopyWithImpl<$Res, _$ProvidersImpl>
    implements _$$ProvidersImplCopyWith<$Res> {
  __$$ProvidersImplCopyWithImpl(
      _$ProvidersImpl _value, $Res Function(_$ProvidersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobileNumber = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? inspectionFee = freezed,
    Object? cityId = freezed,
    Object? cityName = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? profilePic = freezed,
    Object? coverImage = freezed,
    Object? images = freezed,
    Object? callCount = freezed,
    Object? whatsappCount = freezed,
    Object? viewCount = freezed,
    Object? averageRating = freezed,
    Object? ratings = freezed,
  }) {
    return _then(_$ProvidersImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionFee: freezed == inspectionFee
          ? _value.inspectionFee
          : inspectionFee // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProviders>?,
      callCount: freezed == callCount
          ? _value.callCount
          : callCount // ignore: cast_nullable_to_non_nullable
              as int?,
      whatsappCount: freezed == whatsappCount
          ? _value.whatsappCount
          : whatsappCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      ratings: freezed == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingProviders>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvidersImpl implements _Providers {
  const _$ProvidersImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "mobile_number") this.mobileNumber,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "inspection_fee") this.inspectionFee,
      @JsonKey(name: "city_id") this.cityId,
      @JsonKey(name: "city_name") this.cityName,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "category_name") this.categoryName,
      @JsonKey(name: "profile_pic") this.profilePic,
      @JsonKey(name: "cover_image") this.coverImage,
      @JsonKey(name: "images") final List<ImageProviders>? images,
      @JsonKey(name: "call_count") this.callCount,
      @JsonKey(name: "whatsapp_count") this.whatsappCount,
      @JsonKey(name: "view_count") this.viewCount,
      @JsonKey(name: "average_rating") this.averageRating,
      @JsonKey(name: "ratings") final List<RatingProviders>? ratings})
      : _images = images,
        _ratings = ratings;

  factory _$ProvidersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvidersImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "inspection_fee")
  final String? inspectionFee;
  @override
  @JsonKey(name: "city_id")
  final int? cityId;
  @override
  @JsonKey(name: "city_name")
  final String? cityName;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @JsonKey(name: "cover_image")
  final String? coverImage;
  final List<ImageProviders>? _images;
  @override
  @JsonKey(name: "images")
  List<ImageProviders>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "call_count")
  final int? callCount;
  @override
  @JsonKey(name: "whatsapp_count")
  final int? whatsappCount;
  @override
  @JsonKey(name: "view_count")
  final int? viewCount;
  @override
  @JsonKey(name: "average_rating")
  final int? averageRating;
  final List<RatingProviders>? _ratings;
  @override
  @JsonKey(name: "ratings")
  List<RatingProviders>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Providers(id: $id, mobileNumber: $mobileNumber, name: $name, description: $description, inspectionFee: $inspectionFee, cityId: $cityId, cityName: $cityName, categoryId: $categoryId, categoryName: $categoryName, profilePic: $profilePic, coverImage: $coverImage, images: $images, callCount: $callCount, whatsappCount: $whatsappCount, viewCount: $viewCount, averageRating: $averageRating, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvidersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.inspectionFee, inspectionFee) ||
                other.inspectionFee == inspectionFee) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.callCount, callCount) ||
                other.callCount == callCount) &&
            (identical(other.whatsappCount, whatsappCount) ||
                other.whatsappCount == whatsappCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mobileNumber,
      name,
      description,
      inspectionFee,
      cityId,
      cityName,
      categoryId,
      categoryName,
      profilePic,
      coverImage,
      const DeepCollectionEquality().hash(_images),
      callCount,
      whatsappCount,
      viewCount,
      averageRating,
      const DeepCollectionEquality().hash(_ratings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvidersImplCopyWith<_$ProvidersImpl> get copyWith =>
      __$$ProvidersImplCopyWithImpl<_$ProvidersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvidersImplToJson(
      this,
    );
  }
}

abstract class _Providers implements Providers {
  const factory _Providers(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "mobile_number") final String? mobileNumber,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "inspection_fee") final String? inspectionFee,
          @JsonKey(name: "city_id") final int? cityId,
          @JsonKey(name: "city_name") final String? cityName,
          @JsonKey(name: "category_id") final int? categoryId,
          @JsonKey(name: "category_name") final String? categoryName,
          @JsonKey(name: "profile_pic") final String? profilePic,
          @JsonKey(name: "cover_image") final String? coverImage,
          @JsonKey(name: "images") final List<ImageProviders>? images,
          @JsonKey(name: "call_count") final int? callCount,
          @JsonKey(name: "whatsapp_count") final int? whatsappCount,
          @JsonKey(name: "view_count") final int? viewCount,
          @JsonKey(name: "average_rating") final int? averageRating,
          @JsonKey(name: "ratings") final List<RatingProviders>? ratings}) =
      _$ProvidersImpl;

  factory _Providers.fromJson(Map<String, dynamic> json) =
      _$ProvidersImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "inspection_fee")
  String? get inspectionFee;
  @override
  @JsonKey(name: "city_id")
  int? get cityId;
  @override
  @JsonKey(name: "city_name")
  String? get cityName;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @JsonKey(name: "cover_image")
  String? get coverImage;
  @override
  @JsonKey(name: "images")
  List<ImageProviders>? get images;
  @override
  @JsonKey(name: "call_count")
  int? get callCount;
  @override
  @JsonKey(name: "whatsapp_count")
  int? get whatsappCount;
  @override
  @JsonKey(name: "view_count")
  int? get viewCount;
  @override
  @JsonKey(name: "average_rating")
  int? get averageRating;
  @override
  @JsonKey(name: "ratings")
  List<RatingProviders>? get ratings;
  @override
  @JsonKey(ignore: true)
  _$$ProvidersImplCopyWith<_$ProvidersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageProviders _$ImageProvidersFromJson(Map<String, dynamic> json) {
  return _ImageProviders.fromJson(json);
}

/// @nodoc
mixin _$ImageProviders {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageProvidersCopyWith<ImageProviders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProvidersCopyWith<$Res> {
  factory $ImageProvidersCopyWith(
          ImageProviders value, $Res Function(ImageProviders) then) =
      _$ImageProvidersCopyWithImpl<$Res, ImageProviders>;
  @useResult
  $Res call({@JsonKey(name: "id") int? id, @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ImageProvidersCopyWithImpl<$Res, $Val extends ImageProviders>
    implements $ImageProvidersCopyWith<$Res> {
  _$ImageProvidersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageProvidersImplCopyWith<$Res>
    implements $ImageProvidersCopyWith<$Res> {
  factory _$$ImageProvidersImplCopyWith(_$ImageProvidersImpl value,
          $Res Function(_$ImageProvidersImpl) then) =
      __$$ImageProvidersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int? id, @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$ImageProvidersImplCopyWithImpl<$Res>
    extends _$ImageProvidersCopyWithImpl<$Res, _$ImageProvidersImpl>
    implements _$$ImageProvidersImplCopyWith<$Res> {
  __$$ImageProvidersImplCopyWithImpl(
      _$ImageProvidersImpl _value, $Res Function(_$ImageProvidersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ImageProvidersImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageProvidersImpl implements _ImageProviders {
  const _$ImageProvidersImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "url") this.url});

  factory _$ImageProvidersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageProvidersImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'ImageProviders(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageProvidersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageProvidersImplCopyWith<_$ImageProvidersImpl> get copyWith =>
      __$$ImageProvidersImplCopyWithImpl<_$ImageProvidersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageProvidersImplToJson(
      this,
    );
  }
}

abstract class _ImageProviders implements ImageProviders {
  const factory _ImageProviders(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "url") final String? url}) = _$ImageProvidersImpl;

  factory _ImageProviders.fromJson(Map<String, dynamic> json) =
      _$ImageProvidersImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ImageProvidersImplCopyWith<_$ImageProvidersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingProviders _$RatingProvidersFromJson(Map<String, dynamic> json) {
  return _RatingProviders.fromJson(json);
}

/// @nodoc
mixin _$RatingProviders {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "customer")
  CustomerProviders? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingProvidersCopyWith<RatingProviders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingProvidersCopyWith<$Res> {
  factory $RatingProvidersCopyWith(
          RatingProviders value, $Res Function(RatingProviders) then) =
      _$RatingProvidersCopyWithImpl<$Res, RatingProviders>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "customer") CustomerProviders? customer,
      @JsonKey(name: "created_at") DateTime? createdAt});

  $CustomerProvidersCopyWith<$Res>? get customer;
}

/// @nodoc
class _$RatingProvidersCopyWithImpl<$Res, $Val extends RatingProviders>
    implements $RatingProvidersCopyWith<$Res> {
  _$RatingProvidersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? notes = freezed,
    Object? customer = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerProviders?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerProvidersCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerProvidersCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingProvidersImplCopyWith<$Res>
    implements $RatingProvidersCopyWith<$Res> {
  factory _$$RatingProvidersImplCopyWith(_$RatingProvidersImpl value,
          $Res Function(_$RatingProvidersImpl) then) =
      __$$RatingProvidersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "customer") CustomerProviders? customer,
      @JsonKey(name: "created_at") DateTime? createdAt});

  @override
  $CustomerProvidersCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$RatingProvidersImplCopyWithImpl<$Res>
    extends _$RatingProvidersCopyWithImpl<$Res, _$RatingProvidersImpl>
    implements _$$RatingProvidersImplCopyWith<$Res> {
  __$$RatingProvidersImplCopyWithImpl(
      _$RatingProvidersImpl _value, $Res Function(_$RatingProvidersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? notes = freezed,
    Object? customer = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$RatingProvidersImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerProviders?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingProvidersImpl implements _RatingProviders {
  const _$RatingProvidersImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "rate") this.rate,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "customer") this.customer,
      @JsonKey(name: "created_at") this.createdAt});

  factory _$RatingProvidersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingProvidersImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "rate")
  final int? rate;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "customer")
  final CustomerProviders? customer;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RatingProviders(id: $id, rate: $rate, notes: $notes, customer: $customer, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingProvidersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rate, notes, customer, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingProvidersImplCopyWith<_$RatingProvidersImpl> get copyWith =>
      __$$RatingProvidersImplCopyWithImpl<_$RatingProvidersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingProvidersImplToJson(
      this,
    );
  }
}

abstract class _RatingProviders implements RatingProviders {
  const factory _RatingProviders(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "rate") final int? rate,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "customer") final CustomerProviders? customer,
          @JsonKey(name: "created_at") final DateTime? createdAt}) =
      _$RatingProvidersImpl;

  factory _RatingProviders.fromJson(Map<String, dynamic> json) =
      _$RatingProvidersImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "rate")
  int? get rate;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "customer")
  CustomerProviders? get customer;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RatingProvidersImplCopyWith<_$RatingProvidersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerProviders _$CustomerProvidersFromJson(Map<String, dynamic> json) {
  return _CustomerProviders.fromJson(json);
}

/// @nodoc
mixin _$CustomerProviders {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerProvidersCopyWith<CustomerProviders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProvidersCopyWith<$Res> {
  factory $CustomerProvidersCopyWith(
          CustomerProviders value, $Res Function(CustomerProviders) then) =
      _$CustomerProvidersCopyWithImpl<$Res, CustomerProviders>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_pic") String? profilePic});
}

/// @nodoc
class _$CustomerProvidersCopyWithImpl<$Res, $Val extends CustomerProviders>
    implements $CustomerProvidersCopyWith<$Res> {
  _$CustomerProvidersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profilePic = freezed,
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
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerProvidersImplCopyWith<$Res>
    implements $CustomerProvidersCopyWith<$Res> {
  factory _$$CustomerProvidersImplCopyWith(_$CustomerProvidersImpl value,
          $Res Function(_$CustomerProvidersImpl) then) =
      __$$CustomerProvidersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profile_pic") String? profilePic});
}

/// @nodoc
class __$$CustomerProvidersImplCopyWithImpl<$Res>
    extends _$CustomerProvidersCopyWithImpl<$Res, _$CustomerProvidersImpl>
    implements _$$CustomerProvidersImplCopyWith<$Res> {
  __$$CustomerProvidersImplCopyWithImpl(_$CustomerProvidersImpl _value,
      $Res Function(_$CustomerProvidersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_$CustomerProvidersImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$CustomerProvidersImpl implements _CustomerProviders {
  const _$CustomerProvidersImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "profile_pic") this.profilePic});

  factory _$CustomerProvidersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerProvidersImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;

  @override
  String toString() {
    return 'CustomerProviders(id: $id, name: $name, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerProvidersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerProvidersImplCopyWith<_$CustomerProvidersImpl> get copyWith =>
      __$$CustomerProvidersImplCopyWithImpl<_$CustomerProvidersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerProvidersImplToJson(
      this,
    );
  }
}

abstract class _CustomerProviders implements CustomerProviders {
  const factory _CustomerProviders(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "profile_pic") final String? profilePic}) =
      _$CustomerProvidersImpl;

  factory _CustomerProviders.fromJson(Map<String, dynamic> json) =
      _$CustomerProvidersImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$CustomerProvidersImplCopyWith<_$CustomerProvidersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "total_pages") int? totalPages});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? count = freezed,
    Object? perPage = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "total_pages") int? totalPages});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? count = freezed,
    Object? perPage = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$PaginationImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: "total") this.total,
      @JsonKey(name: "count") this.count,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "total_pages") this.totalPages});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;

  @override
  String toString() {
    return 'Pagination(total: $total, count: $count, perPage: $perPage, currentPage: $currentPage, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, count, perPage, currentPage, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {@JsonKey(name: "total") final int? total,
      @JsonKey(name: "count") final int? count,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "total_pages") final int? totalPages}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
