// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerProfileAdapter extends TypeAdapter<CustomerProfile> {
  @override
  final int typeId = 5;

  @override
  CustomerProfile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerProfile(
      id: fields[0] as int?,
      mobileNumber: fields[1] as String?,
      email: fields[2] as dynamic,
      name: fields[3] as String?,
      profilePic: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerProfile obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mobileNumber)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.profilePic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerProfileModelImpl _$$CustomerProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerProfileModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CustomerProfile.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerProfileModelImplToJson(
        _$CustomerProfileModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$CustomerProfileImpl _$$CustomerProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      mobileNumber: json['mobile_number'] as String?,
      email: json['email'],
      name: json['name'] as String?,
      profilePic: json['profile_pic'] as String?,
    );

Map<String, dynamic> _$$CustomerProfileImplToJson(
        _$CustomerProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
      'name': instance.name,
      'profile_pic': instance.profilePic,
    };
