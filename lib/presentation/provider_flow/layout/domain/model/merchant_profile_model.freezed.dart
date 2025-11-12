// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MerchantProfileModel _$MerchantProfileModelFromJson(Map<String, dynamic> json) {
  return _MerchantProfileModel.fromJson(json);
}

/// @nodoc
mixin _$MerchantProfileModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  MerchantProfile? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantProfileModelCopyWith<MerchantProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantProfileModelCopyWith<$Res> {
  factory $MerchantProfileModelCopyWith(MerchantProfileModel value,
          $Res Function(MerchantProfileModel) then) =
      _$MerchantProfileModelCopyWithImpl<$Res, MerchantProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") MerchantProfile? data});

  $MerchantProfileCopyWith<$Res>? get data;
}

/// @nodoc
class _$MerchantProfileModelCopyWithImpl<$Res,
        $Val extends MerchantProfileModel>
    implements $MerchantProfileModelCopyWith<$Res> {
  _$MerchantProfileModelCopyWithImpl(this._value, this._then);

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
              as MerchantProfile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantProfileCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MerchantProfileCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MerchantProfileModelImplCopyWith<$Res>
    implements $MerchantProfileModelCopyWith<$Res> {
  factory _$$MerchantProfileModelImplCopyWith(_$MerchantProfileModelImpl value,
          $Res Function(_$MerchantProfileModelImpl) then) =
      __$$MerchantProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") MerchantProfile? data});

  @override
  $MerchantProfileCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MerchantProfileModelImplCopyWithImpl<$Res>
    extends _$MerchantProfileModelCopyWithImpl<$Res, _$MerchantProfileModelImpl>
    implements _$$MerchantProfileModelImplCopyWith<$Res> {
  __$$MerchantProfileModelImplCopyWithImpl(_$MerchantProfileModelImpl _value,
      $Res Function(_$MerchantProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MerchantProfileModelImpl(
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
              as MerchantProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantProfileModelImpl implements _MerchantProfileModel {
  const _$MerchantProfileModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$MerchantProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final MerchantProfile? data;

  @override
  String toString() {
    return 'MerchantProfileModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantProfileModelImpl &&
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
  _$$MerchantProfileModelImplCopyWith<_$MerchantProfileModelImpl>
      get copyWith =>
          __$$MerchantProfileModelImplCopyWithImpl<_$MerchantProfileModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantProfileModelImplToJson(
      this,
    );
  }
}

abstract class _MerchantProfileModel implements MerchantProfileModel {
  const factory _MerchantProfileModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final MerchantProfile? data}) =
      _$MerchantProfileModelImpl;

  factory _MerchantProfileModel.fromJson(Map<String, dynamic> json) =
      _$MerchantProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  MerchantProfile? get data;
  @override
  @JsonKey(ignore: true)
  _$$MerchantProfileModelImplCopyWith<_$MerchantProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MerchantProfile _$MerchantProfileFromJson(Map<String, dynamic> json) {
  return _MerchantProfile.fromJson(json);
}

/// @nodoc
mixin _$MerchantProfile {
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "inspection_fee")
  dynamic get inspectionFee => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "city_id")
  dynamic get cityId => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "city_name")
  dynamic get cityName => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "category_id")
  dynamic get categoryId => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "category_name")
  dynamic get categoryName => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: "cover_image")
  String? get coverImage => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: "images")
  List<ImagesWork>? get images => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: "call_count")
  int? get callCount => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: "whatsapp_count")
  int? get whatsappCount => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: "view_count")
  int? get viewCount => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: "average_rating")
  int? get averageRating => throw _privateConstructorUsedError;
  @HiveField(16)
  @JsonKey(name: "ratings")
  List<Rating>? get ratings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantProfileCopyWith<MerchantProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantProfileCopyWith<$Res> {
  factory $MerchantProfileCopyWith(
          MerchantProfile value, $Res Function(MerchantProfile) then) =
      _$MerchantProfileCopyWithImpl<$Res, MerchantProfile>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "mobile_number") String? mobileNumber,
      @HiveField(2) @JsonKey(name: "name") String? name,
      @HiveField(3) @JsonKey(name: "description") dynamic description,
      @HiveField(4) @JsonKey(name: "inspection_fee") dynamic inspectionFee,
      @HiveField(5) @JsonKey(name: "city_id") dynamic cityId,
      @HiveField(6) @JsonKey(name: "city_name") dynamic cityName,
      @HiveField(7) @JsonKey(name: "category_id") dynamic categoryId,
      @HiveField(8) @JsonKey(name: "category_name") dynamic categoryName,
      @HiveField(9) @JsonKey(name: "profile_pic") String? profilePic,
      @HiveField(10) @JsonKey(name: "cover_image") String? coverImage,
      @HiveField(11) @JsonKey(name: "images") List<ImagesWork>? images,
      @HiveField(12) @JsonKey(name: "call_count") int? callCount,
      @HiveField(13) @JsonKey(name: "whatsapp_count") int? whatsappCount,
      @HiveField(14) @JsonKey(name: "view_count") int? viewCount,
      @HiveField(15) @JsonKey(name: "average_rating") int? averageRating,
      @HiveField(16) @JsonKey(name: "ratings") List<Rating>? ratings});
}

/// @nodoc
class _$MerchantProfileCopyWithImpl<$Res, $Val extends MerchantProfile>
    implements $MerchantProfileCopyWith<$Res> {
  _$MerchantProfileCopyWithImpl(this._value, this._then);

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
              as dynamic,
      inspectionFee: freezed == inspectionFee
          ? _value.inspectionFee
          : inspectionFee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as List<ImagesWork>?,
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
abstract class _$$MerchantProfileImplCopyWith<$Res>
    implements $MerchantProfileCopyWith<$Res> {
  factory _$$MerchantProfileImplCopyWith(_$MerchantProfileImpl value,
          $Res Function(_$MerchantProfileImpl) then) =
      __$$MerchantProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "mobile_number") String? mobileNumber,
      @HiveField(2) @JsonKey(name: "name") String? name,
      @HiveField(3) @JsonKey(name: "description") dynamic description,
      @HiveField(4) @JsonKey(name: "inspection_fee") dynamic inspectionFee,
      @HiveField(5) @JsonKey(name: "city_id") dynamic cityId,
      @HiveField(6) @JsonKey(name: "city_name") dynamic cityName,
      @HiveField(7) @JsonKey(name: "category_id") dynamic categoryId,
      @HiveField(8) @JsonKey(name: "category_name") dynamic categoryName,
      @HiveField(9) @JsonKey(name: "profile_pic") String? profilePic,
      @HiveField(10) @JsonKey(name: "cover_image") String? coverImage,
      @HiveField(11) @JsonKey(name: "images") List<ImagesWork>? images,
      @HiveField(12) @JsonKey(name: "call_count") int? callCount,
      @HiveField(13) @JsonKey(name: "whatsapp_count") int? whatsappCount,
      @HiveField(14) @JsonKey(name: "view_count") int? viewCount,
      @HiveField(15) @JsonKey(name: "average_rating") int? averageRating,
      @HiveField(16) @JsonKey(name: "ratings") List<Rating>? ratings});
}

/// @nodoc
class __$$MerchantProfileImplCopyWithImpl<$Res>
    extends _$MerchantProfileCopyWithImpl<$Res, _$MerchantProfileImpl>
    implements _$$MerchantProfileImplCopyWith<$Res> {
  __$$MerchantProfileImplCopyWithImpl(
      _$MerchantProfileImpl _value, $Res Function(_$MerchantProfileImpl) _then)
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
    return _then(_$MerchantProfileImpl(
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
              as dynamic,
      inspectionFee: freezed == inspectionFee
          ? _value.inspectionFee
          : inspectionFee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as List<ImagesWork>?,
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
class _$MerchantProfileImpl implements _MerchantProfile {
  const _$MerchantProfileImpl(
      {@HiveField(0) @JsonKey(name: "id") this.id,
      @HiveField(1) @JsonKey(name: "mobile_number") this.mobileNumber,
      @HiveField(2) @JsonKey(name: "name") this.name,
      @HiveField(3) @JsonKey(name: "description") this.description,
      @HiveField(4) @JsonKey(name: "inspection_fee") this.inspectionFee,
      @HiveField(5) @JsonKey(name: "city_id") this.cityId,
      @HiveField(6) @JsonKey(name: "city_name") this.cityName,
      @HiveField(7) @JsonKey(name: "category_id") this.categoryId,
      @HiveField(8) @JsonKey(name: "category_name") this.categoryName,
      @HiveField(9) @JsonKey(name: "profile_pic") this.profilePic,
      @HiveField(10) @JsonKey(name: "cover_image") this.coverImage,
      @HiveField(11) @JsonKey(name: "images") final List<ImagesWork>? images,
      @HiveField(12) @JsonKey(name: "call_count") this.callCount,
      @HiveField(13) @JsonKey(name: "whatsapp_count") this.whatsappCount,
      @HiveField(14) @JsonKey(name: "view_count") this.viewCount,
      @HiveField(15) @JsonKey(name: "average_rating") this.averageRating,
      @HiveField(16) @JsonKey(name: "ratings") final List<Rating>? ratings})
      : _images = images,
        _ratings = ratings;

  factory _$MerchantProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantProfileImplFromJson(json);

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
  @JsonKey(name: "name")
  final String? name;
  @override
  @HiveField(3)
  @JsonKey(name: "description")
  final dynamic description;
  @override
  @HiveField(4)
  @JsonKey(name: "inspection_fee")
  final dynamic inspectionFee;
  @override
  @HiveField(5)
  @JsonKey(name: "city_id")
  final dynamic cityId;
  @override
  @HiveField(6)
  @JsonKey(name: "city_name")
  final dynamic cityName;
  @override
  @HiveField(7)
  @JsonKey(name: "category_id")
  final dynamic categoryId;
  @override
  @HiveField(8)
  @JsonKey(name: "category_name")
  final dynamic categoryName;
  @override
  @HiveField(9)
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @HiveField(10)
  @JsonKey(name: "cover_image")
  final String? coverImage;
  final List<ImagesWork>? _images;
  @override
  @HiveField(11)
  @JsonKey(name: "images")
  List<ImagesWork>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(12)
  @JsonKey(name: "call_count")
  final int? callCount;
  @override
  @HiveField(13)
  @JsonKey(name: "whatsapp_count")
  final int? whatsappCount;
  @override
  @HiveField(14)
  @JsonKey(name: "view_count")
  final int? viewCount;
  @override
  @HiveField(15)
  @JsonKey(name: "average_rating")
  final int? averageRating;
  final List<Rating>? _ratings;
  @override
  @HiveField(16)
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
    return 'MerchantProfile(id: $id, mobileNumber: $mobileNumber, name: $name, description: $description, inspectionFee: $inspectionFee, cityId: $cityId, cityName: $cityName, categoryId: $categoryId, categoryName: $categoryName, profilePic: $profilePic, coverImage: $coverImage, images: $images, callCount: $callCount, whatsappCount: $whatsappCount, viewCount: $viewCount, averageRating: $averageRating, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.inspectionFee, inspectionFee) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
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
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(inspectionFee),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(categoryName),
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
  _$$MerchantProfileImplCopyWith<_$MerchantProfileImpl> get copyWith =>
      __$$MerchantProfileImplCopyWithImpl<_$MerchantProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantProfileImplToJson(
      this,
    );
  }
}

abstract class _MerchantProfile implements MerchantProfile {
  const factory _MerchantProfile(
      {@HiveField(0) @JsonKey(name: "id") final int? id,
      @HiveField(1) @JsonKey(name: "mobile_number") final String? mobileNumber,
      @HiveField(2) @JsonKey(name: "name") final String? name,
      @HiveField(3) @JsonKey(name: "description") final dynamic description,
      @HiveField(4)
      @JsonKey(name: "inspection_fee")
      final dynamic inspectionFee,
      @HiveField(5) @JsonKey(name: "city_id") final dynamic cityId,
      @HiveField(6) @JsonKey(name: "city_name") final dynamic cityName,
      @HiveField(7) @JsonKey(name: "category_id") final dynamic categoryId,
      @HiveField(8) @JsonKey(name: "category_name") final dynamic categoryName,
      @HiveField(9) @JsonKey(name: "profile_pic") final String? profilePic,
      @HiveField(10) @JsonKey(name: "cover_image") final String? coverImage,
      @HiveField(11) @JsonKey(name: "images") final List<ImagesWork>? images,
      @HiveField(12) @JsonKey(name: "call_count") final int? callCount,
      @HiveField(13) @JsonKey(name: "whatsapp_count") final int? whatsappCount,
      @HiveField(14) @JsonKey(name: "view_count") final int? viewCount,
      @HiveField(15) @JsonKey(name: "average_rating") final int? averageRating,
      @HiveField(16)
      @JsonKey(name: "ratings")
      final List<Rating>? ratings}) = _$MerchantProfileImpl;

  factory _MerchantProfile.fromJson(Map<String, dynamic> json) =
      _$MerchantProfileImpl.fromJson;

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
  @JsonKey(name: "name")
  String? get name;
  @override
  @HiveField(3)
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @HiveField(4)
  @JsonKey(name: "inspection_fee")
  dynamic get inspectionFee;
  @override
  @HiveField(5)
  @JsonKey(name: "city_id")
  dynamic get cityId;
  @override
  @HiveField(6)
  @JsonKey(name: "city_name")
  dynamic get cityName;
  @override
  @HiveField(7)
  @JsonKey(name: "category_id")
  dynamic get categoryId;
  @override
  @HiveField(8)
  @JsonKey(name: "category_name")
  dynamic get categoryName;
  @override
  @HiveField(9)
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @HiveField(10)
  @JsonKey(name: "cover_image")
  String? get coverImage;
  @override
  @HiveField(11)
  @JsonKey(name: "images")
  List<ImagesWork>? get images;
  @override
  @HiveField(12)
  @JsonKey(name: "call_count")
  int? get callCount;
  @override
  @HiveField(13)
  @JsonKey(name: "whatsapp_count")
  int? get whatsappCount;
  @override
  @HiveField(14)
  @JsonKey(name: "view_count")
  int? get viewCount;
  @override
  @HiveField(15)
  @JsonKey(name: "average_rating")
  int? get averageRating;
  @override
  @HiveField(16)
  @JsonKey(name: "ratings")
  List<Rating>? get ratings;
  @override
  @JsonKey(ignore: true)
  _$$MerchantProfileImplCopyWith<_$MerchantProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "rate")
  int? get rate => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "customer")
  Customer? get customer => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "rate") int? rate,
      @HiveField(2) @JsonKey(name: "notes") String? notes,
      @HiveField(3) @JsonKey(name: "customer") Customer? customer,
      @HiveField(4) @JsonKey(name: "created_at") DateTime? createdAt});

  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

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
              as Customer?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "rate") int? rate,
      @HiveField(2) @JsonKey(name: "notes") String? notes,
      @HiveField(3) @JsonKey(name: "customer") Customer? customer,
      @HiveField(4) @JsonKey(name: "created_at") DateTime? createdAt});

  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
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
    return _then(_$RatingImpl(
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
              as Customer?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl(
      {@HiveField(0) @JsonKey(name: "id") this.id,
      @HiveField(1) @JsonKey(name: "rate") this.rate,
      @HiveField(2) @JsonKey(name: "notes") this.notes,
      @HiveField(3) @JsonKey(name: "customer") this.customer,
      @HiveField(4) @JsonKey(name: "created_at") this.createdAt});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: "rate")
  final int? rate;
  @override
  @HiveField(2)
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @HiveField(3)
  @JsonKey(name: "customer")
  final Customer? customer;
  @override
  @HiveField(4)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Rating(id: $id, rate: $rate, notes: $notes, customer: $customer, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
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
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {@HiveField(0) @JsonKey(name: "id") final int? id,
      @HiveField(1) @JsonKey(name: "rate") final int? rate,
      @HiveField(2) @JsonKey(name: "notes") final String? notes,
      @HiveField(3) @JsonKey(name: "customer") final Customer? customer,
      @HiveField(4)
      @JsonKey(name: "created_at")
      final DateTime? createdAt}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: "rate")
  int? get rate;
  @override
  @HiveField(2)
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @HiveField(3)
  @JsonKey(name: "customer")
  Customer? get customer;
  @override
  @HiveField(4)
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "name") String? name,
      @HiveField(2) @JsonKey(name: "profile_pic") String? profilePic});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

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
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "name") String? name,
      @HiveField(2) @JsonKey(name: "profile_pic") String? profilePic});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_$CustomerImpl(
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
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {@HiveField(0) @JsonKey(name: "id") this.id,
      @HiveField(1) @JsonKey(name: "name") this.name,
      @HiveField(2) @JsonKey(name: "profile_pic") this.profilePic});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: "name")
  final String? name;
  @override
  @HiveField(2)
  @JsonKey(name: "profile_pic")
  final String? profilePic;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
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
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {@HiveField(0) @JsonKey(name: "id") final int? id,
      @HiveField(1) @JsonKey(name: "name") final String? name,
      @HiveField(2)
      @JsonKey(name: "profile_pic")
      final String? profilePic}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: "name")
  String? get name;
  @override
  @HiveField(2)
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesWork _$ImagesWorkFromJson(Map<String, dynamic> json) {
  return _ImagesWork.fromJson(json);
}

/// @nodoc
mixin _$ImagesWork {
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesWorkCopyWith<ImagesWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesWorkCopyWith<$Res> {
  factory $ImagesWorkCopyWith(
          ImagesWork value, $Res Function(ImagesWork) then) =
      _$ImagesWorkCopyWithImpl<$Res, ImagesWork>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ImagesWorkCopyWithImpl<$Res, $Val extends ImagesWork>
    implements $ImagesWorkCopyWith<$Res> {
  _$ImagesWorkCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesWorkImplCopyWith<$Res>
    implements $ImagesWorkCopyWith<$Res> {
  factory _$$ImagesWorkImplCopyWith(
          _$ImagesWorkImpl value, $Res Function(_$ImagesWorkImpl) then) =
      __$$ImagesWorkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int? id,
      @HiveField(1) @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$ImagesWorkImplCopyWithImpl<$Res>
    extends _$ImagesWorkCopyWithImpl<$Res, _$ImagesWorkImpl>
    implements _$$ImagesWorkImplCopyWith<$Res> {
  __$$ImagesWorkImplCopyWithImpl(
      _$ImagesWorkImpl _value, $Res Function(_$ImagesWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ImagesWorkImpl(
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
class _$ImagesWorkImpl implements _ImagesWork {
  const _$ImagesWorkImpl(
      {@HiveField(0) @JsonKey(name: "id") this.id,
      @HiveField(1) @JsonKey(name: "url") this.url});

  factory _$ImagesWorkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesWorkImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'ImagesWork(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesWorkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesWorkImplCopyWith<_$ImagesWorkImpl> get copyWith =>
      __$$ImagesWorkImplCopyWithImpl<_$ImagesWorkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesWorkImplToJson(
      this,
    );
  }
}

abstract class _ImagesWork implements ImagesWork {
  const factory _ImagesWork(
          {@HiveField(0) @JsonKey(name: "id") final int? id,
          @HiveField(1) @JsonKey(name: "url") final String? url}) =
      _$ImagesWorkImpl;

  factory _ImagesWork.fromJson(Map<String, dynamic> json) =
      _$ImagesWorkImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ImagesWorkImplCopyWith<_$ImagesWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
