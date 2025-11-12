// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvidersDetailsModel _$ProvidersDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _ProvidersDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProvidersDetailsModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  ProvidersDetailsModelData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvidersDetailsModelCopyWith<ProvidersDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvidersDetailsModelCopyWith<$Res> {
  factory $ProvidersDetailsModelCopyWith(ProvidersDetailsModel value,
          $Res Function(ProvidersDetailsModel) then) =
      _$ProvidersDetailsModelCopyWithImpl<$Res, ProvidersDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") ProvidersDetailsModelData? data});

  $ProvidersDetailsModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProvidersDetailsModelCopyWithImpl<$Res,
        $Val extends ProvidersDetailsModel>
    implements $ProvidersDetailsModelCopyWith<$Res> {
  _$ProvidersDetailsModelCopyWithImpl(this._value, this._then);

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
              as ProvidersDetailsModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvidersDetailsModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProvidersDetailsModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProvidersDetailsModelImplCopyWith<$Res>
    implements $ProvidersDetailsModelCopyWith<$Res> {
  factory _$$ProvidersDetailsModelImplCopyWith(
          _$ProvidersDetailsModelImpl value,
          $Res Function(_$ProvidersDetailsModelImpl) then) =
      __$$ProvidersDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") ProvidersDetailsModelData? data});

  @override
  $ProvidersDetailsModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProvidersDetailsModelImplCopyWithImpl<$Res>
    extends _$ProvidersDetailsModelCopyWithImpl<$Res,
        _$ProvidersDetailsModelImpl>
    implements _$$ProvidersDetailsModelImplCopyWith<$Res> {
  __$$ProvidersDetailsModelImplCopyWithImpl(_$ProvidersDetailsModelImpl _value,
      $Res Function(_$ProvidersDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProvidersDetailsModelImpl(
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
              as ProvidersDetailsModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvidersDetailsModelImpl implements _ProvidersDetailsModel {
  const _$ProvidersDetailsModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$ProvidersDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvidersDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final ProvidersDetailsModelData? data;

  @override
  String toString() {
    return 'ProvidersDetailsModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvidersDetailsModelImpl &&
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
  _$$ProvidersDetailsModelImplCopyWith<_$ProvidersDetailsModelImpl>
      get copyWith => __$$ProvidersDetailsModelImplCopyWithImpl<
          _$ProvidersDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvidersDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ProvidersDetailsModel implements ProvidersDetailsModel {
  const factory _ProvidersDetailsModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final ProvidersDetailsModelData? data}) =
      _$ProvidersDetailsModelImpl;

  factory _ProvidersDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProvidersDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  ProvidersDetailsModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProvidersDetailsModelImplCopyWith<_$ProvidersDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProvidersDetailsModelData _$ProvidersDetailsModelDataFromJson(
    Map<String, dynamic> json) {
  return _ProvidersDetailsModelData.fromJson(json);
}

/// @nodoc
mixin _$ProvidersDetailsModelData {
  @JsonKey(name: "data")
  DataData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvidersDetailsModelDataCopyWith<ProvidersDetailsModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvidersDetailsModelDataCopyWith<$Res> {
  factory $ProvidersDetailsModelDataCopyWith(ProvidersDetailsModelData value,
          $Res Function(ProvidersDetailsModelData) then) =
      _$ProvidersDetailsModelDataCopyWithImpl<$Res, ProvidersDetailsModelData>;
  @useResult
  $Res call({@JsonKey(name: "data") DataData? data});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProvidersDetailsModelDataCopyWithImpl<$Res,
        $Val extends ProvidersDetailsModelData>
    implements $ProvidersDetailsModelDataCopyWith<$Res> {
  _$ProvidersDetailsModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProvidersDetailsModelDataImplCopyWith<$Res>
    implements $ProvidersDetailsModelDataCopyWith<$Res> {
  factory _$$ProvidersDetailsModelDataImplCopyWith(
          _$ProvidersDetailsModelDataImpl value,
          $Res Function(_$ProvidersDetailsModelDataImpl) then) =
      __$$ProvidersDetailsModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DataData? data});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProvidersDetailsModelDataImplCopyWithImpl<$Res>
    extends _$ProvidersDetailsModelDataCopyWithImpl<$Res,
        _$ProvidersDetailsModelDataImpl>
    implements _$$ProvidersDetailsModelDataImplCopyWith<$Res> {
  __$$ProvidersDetailsModelDataImplCopyWithImpl(
      _$ProvidersDetailsModelDataImpl _value,
      $Res Function(_$ProvidersDetailsModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProvidersDetailsModelDataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvidersDetailsModelDataImpl implements _ProvidersDetailsModelData {
  const _$ProvidersDetailsModelDataImpl({@JsonKey(name: "data") this.data});

  factory _$ProvidersDetailsModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvidersDetailsModelDataImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataData? data;

  @override
  String toString() {
    return 'ProvidersDetailsModelData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvidersDetailsModelDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvidersDetailsModelDataImplCopyWith<_$ProvidersDetailsModelDataImpl>
      get copyWith => __$$ProvidersDetailsModelDataImplCopyWithImpl<
          _$ProvidersDetailsModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvidersDetailsModelDataImplToJson(
      this,
    );
  }
}

abstract class _ProvidersDetailsModelData implements ProvidersDetailsModelData {
  const factory _ProvidersDetailsModelData(
          {@JsonKey(name: "data") final DataData? data}) =
      _$ProvidersDetailsModelDataImpl;

  factory _ProvidersDetailsModelData.fromJson(Map<String, dynamic> json) =
      _$ProvidersDetailsModelDataImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProvidersDetailsModelDataImplCopyWith<_$ProvidersDetailsModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataData _$DataDataFromJson(Map<String, dynamic> json) {
  return _DataData.fromJson(json);
}

/// @nodoc
mixin _$DataData {
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
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "call_count")
  int? get callCount => throw _privateConstructorUsedError;
  @JsonKey(name: "whatsapp_count")
  int? get whatsappCount => throw _privateConstructorUsedError;
  @JsonKey(name: "view_count")
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: "average_rating")
  int? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "ratings")
  List<Rating>? get ratings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDataCopyWith<DataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDataCopyWith<$Res> {
  factory $DataDataCopyWith(DataData value, $Res Function(DataData) then) =
      _$DataDataCopyWithImpl<$Res, DataData>;
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
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "call_count") int? callCount,
      @JsonKey(name: "whatsapp_count") int? whatsappCount,
      @JsonKey(name: "view_count") int? viewCount,
      @JsonKey(name: "average_rating") int? averageRating,
      @JsonKey(name: "ratings") List<Rating>? ratings});
}

/// @nodoc
class _$DataDataCopyWithImpl<$Res, $Val extends DataData>
    implements $DataDataCopyWith<$Res> {
  _$DataDataCopyWithImpl(this._value, this._then);

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
              as List<Image>?,
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
              as List<Rating>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDataImplCopyWith<$Res>
    implements $DataDataCopyWith<$Res> {
  factory _$$DataDataImplCopyWith(
          _$DataDataImpl value, $Res Function(_$DataDataImpl) then) =
      __$$DataDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "call_count") int? callCount,
      @JsonKey(name: "whatsapp_count") int? whatsappCount,
      @JsonKey(name: "view_count") int? viewCount,
      @JsonKey(name: "average_rating") int? averageRating,
      @JsonKey(name: "ratings") List<Rating>? ratings});
}

/// @nodoc
class __$$DataDataImplCopyWithImpl<$Res>
    extends _$DataDataCopyWithImpl<$Res, _$DataDataImpl>
    implements _$$DataDataImplCopyWith<$Res> {
  __$$DataDataImplCopyWithImpl(
      _$DataDataImpl _value, $Res Function(_$DataDataImpl) _then)
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
    return _then(_$DataDataImpl(
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
              as List<Image>?,
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
              as List<Rating>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDataImpl implements _DataData {
  const _$DataDataImpl(
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
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "call_count") this.callCount,
      @JsonKey(name: "whatsapp_count") this.whatsappCount,
      @JsonKey(name: "view_count") this.viewCount,
      @JsonKey(name: "average_rating") this.averageRating,
      @JsonKey(name: "ratings") final List<Rating>? ratings})
      : _images = images,
        _ratings = ratings;

  factory _$DataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDataImplFromJson(json);

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
  final List<Image>? _images;
  @override
  @JsonKey(name: "images")
  List<Image>? get images {
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
  final List<Rating>? _ratings;
  @override
  @JsonKey(name: "ratings")
  List<Rating>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataData(id: $id, mobileNumber: $mobileNumber, name: $name, description: $description, inspectionFee: $inspectionFee, cityId: $cityId, cityName: $cityName, categoryId: $categoryId, categoryName: $categoryName, profilePic: $profilePic, coverImage: $coverImage, images: $images, callCount: $callCount, whatsappCount: $whatsappCount, viewCount: $viewCount, averageRating: $averageRating, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDataImpl &&
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
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      __$$DataDataImplCopyWithImpl<_$DataDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDataImplToJson(
      this,
    );
  }
}

abstract class _DataData implements DataData {
  const factory _DataData(
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
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "call_count") final int? callCount,
      @JsonKey(name: "whatsapp_count") final int? whatsappCount,
      @JsonKey(name: "view_count") final int? viewCount,
      @JsonKey(name: "average_rating") final int? averageRating,
      @JsonKey(name: "ratings") final List<Rating>? ratings}) = _$DataDataImpl;

  factory _DataData.fromJson(Map<String, dynamic> json) =
      _$DataDataImpl.fromJson;

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
  List<Image>? get images;
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
  List<Rating>? get ratings;
  @override
  @JsonKey(ignore: true)
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({@JsonKey(name: "id") int? id, @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

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
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int? id, @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ImageImpl(
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
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "url") this.url});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Image(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "url") final String? url}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
