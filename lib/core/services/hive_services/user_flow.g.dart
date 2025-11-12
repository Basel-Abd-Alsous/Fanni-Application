// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_flow.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserFlowAdapter extends TypeAdapter<UserFlow> {
  @override
  final int typeId = 0;

  @override
  UserFlow read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserFlow.customer;
      case 1:
        return UserFlow.vendor;
      default:
        return UserFlow.customer;
    }
  }

  @override
  void write(BinaryWriter writer, UserFlow obj) {
    switch (obj) {
      case UserFlow.customer:
        writer.writeByte(0);
        break;
      case UserFlow.vendor:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserFlowAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
