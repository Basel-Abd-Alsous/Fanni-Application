// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliq_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CliqInfoModelImpl _$$CliqInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$CliqInfoModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CliqInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CliqInfoModelImplToJson(_$CliqInfoModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$CliqInfoImpl _$$CliqInfoImplFromJson(Map<String, dynamic> json) =>
    _$CliqInfoImpl(
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      secondPhoneNumber: json['second_phone_number'] as String?,
      clickNumber: json['click_number'] as String?,
      clickName: json['click_name'] as String?,
    );

Map<String, dynamic> _$$CliqInfoImplToJson(_$CliqInfoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'second_phone_number': instance.secondPhoneNumber,
      'click_number': instance.clickNumber,
      'click_name': instance.clickName,
    };
