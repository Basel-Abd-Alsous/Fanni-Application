// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MerchantProfileAdapter extends TypeAdapter<MerchantProfile> {
  @override
  final int typeId = 1;

  @override
  MerchantProfile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MerchantProfile(
      id: fields[0] as int?,
      mobileNumber: fields[1] as String?,
      name: fields[2] as String?,
      description: fields[3] as dynamic,
      inspectionFee: fields[4] as dynamic,
      cityId: fields[5] as dynamic,
      cityName: fields[6] as dynamic,
      categoryId: fields[7] as dynamic,
      categoryName: fields[8] as dynamic,
      profilePic: fields[9] as String?,
      coverImage: fields[10] as String?,
      images: (fields[11] as List?)?.cast<ImagesWork>(),
      callCount: fields[12] as int?,
      whatsappCount: fields[13] as int?,
      viewCount: fields[14] as int?,
      averageRating: fields[15] as int?,
      ratings: (fields[16] as List?)?.cast<Rating>(),
    );
  }

  @override
  void write(BinaryWriter writer, MerchantProfile obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mobileNumber)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.inspectionFee)
      ..writeByte(5)
      ..write(obj.cityId)
      ..writeByte(6)
      ..write(obj.cityName)
      ..writeByte(7)
      ..write(obj.categoryId)
      ..writeByte(8)
      ..write(obj.categoryName)
      ..writeByte(9)
      ..write(obj.profilePic)
      ..writeByte(10)
      ..write(obj.coverImage)
      ..writeByte(11)
      ..write(obj.images)
      ..writeByte(12)
      ..write(obj.callCount)
      ..writeByte(13)
      ..write(obj.whatsappCount)
      ..writeByte(14)
      ..write(obj.viewCount)
      ..writeByte(15)
      ..write(obj.averageRating)
      ..writeByte(16)
      ..write(obj.ratings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MerchantProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RatingAdapter extends TypeAdapter<Rating> {
  @override
  final int typeId = 2;

  @override
  Rating read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rating(
      id: fields[0] as int?,
      rate: fields[1] as int?,
      notes: fields[2] as String?,
      customer: fields[3] as Customer?,
      createdAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Rating obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.rate)
      ..writeByte(2)
      ..write(obj.notes)
      ..writeByte(3)
      ..write(obj.customer)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RatingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CustomerAdapter extends TypeAdapter<Customer> {
  @override
  final int typeId = 3;

  @override
  Customer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Customer(
      id: fields[0] as int?,
      name: fields[1] as String?,
      profilePic: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Customer obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.profilePic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImagesWorkAdapter extends TypeAdapter<ImagesWork> {
  @override
  final int typeId = 4;

  @override
  ImagesWork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImagesWork(
      id: fields[0] as int?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ImagesWork obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImagesWorkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantProfileModelImpl _$$MerchantProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MerchantProfileModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : MerchantProfile.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MerchantProfileModelImplToJson(
        _$MerchantProfileModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$MerchantProfileImpl _$$MerchantProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$MerchantProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      mobileNumber: json['mobile_number'] as String?,
      name: json['name'] as String?,
      description: json['description'],
      inspectionFee: json['inspection_fee'],
      cityId: json['city_id'],
      cityName: json['city_name'],
      categoryId: json['category_id'],
      categoryName: json['category_name'],
      profilePic: json['profile_pic'] as String?,
      coverImage: json['cover_image'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      callCount: (json['call_count'] as num?)?.toInt(),
      whatsappCount: (json['whatsapp_count'] as num?)?.toInt(),
      viewCount: (json['view_count'] as num?)?.toInt(),
      averageRating: (json['average_rating'] as num?)?.toInt(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MerchantProfileImplToJson(
        _$MerchantProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile_number': instance.mobileNumber,
      'name': instance.name,
      'description': instance.description,
      'inspection_fee': instance.inspectionFee,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'profile_pic': instance.profilePic,
      'cover_image': instance.coverImage,
      'images': instance.images,
      'call_count': instance.callCount,
      'whatsapp_count': instance.whatsappCount,
      'view_count': instance.viewCount,
      'average_rating': instance.averageRating,
      'ratings': instance.ratings,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      id: (json['id'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'notes': instance.notes,
      'customer': instance.customer,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profilePic: json['profile_pic'] as String?,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_pic': instance.profilePic,
    };

_$ImagesWorkImpl _$$ImagesWorkImplFromJson(Map<String, dynamic> json) =>
    _$ImagesWorkImpl(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ImagesWorkImplToJson(_$ImagesWorkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
