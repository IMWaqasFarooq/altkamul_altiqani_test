// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemsAdapter extends TypeAdapter<Items> {
  @override
  final int typeId = 0;

  @override
  Items read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Items(
      tags: (fields[0] as List?)?.cast<String>(),
      owner: fields[1] as Owner?,
      isAnswered: fields[2] as bool?,
      viewCount: fields[3] as int?,
      answerCount: fields[4] as int?,
      score: fields[5] as int?,
      lastActivityDate: fields[6] as int?,
      creationDate: fields[7] as int?,
      lastEditDate: fields[8] as int?,
      questionId: fields[9] as int?,
      contentLicense: fields[10] as String?,
      link: fields[11] as String?,
      title: fields[12] as String?,
      acceptedAnswerId: fields[13] as int?,
      closedDate: fields[14] as int?,
      closedReason: fields[15] as String?,
      bountyAmount: fields[16] as int?,
      bountyClosesDate: fields[17] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Items obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.tags)
      ..writeByte(1)
      ..write(obj.owner)
      ..writeByte(2)
      ..write(obj.isAnswered)
      ..writeByte(3)
      ..write(obj.viewCount)
      ..writeByte(4)
      ..write(obj.answerCount)
      ..writeByte(5)
      ..write(obj.score)
      ..writeByte(6)
      ..write(obj.lastActivityDate)
      ..writeByte(7)
      ..write(obj.creationDate)
      ..writeByte(8)
      ..write(obj.lastEditDate)
      ..writeByte(9)
      ..write(obj.questionId)
      ..writeByte(10)
      ..write(obj.contentLicense)
      ..writeByte(11)
      ..write(obj.link)
      ..writeByte(12)
      ..write(obj.title)
      ..writeByte(13)
      ..write(obj.acceptedAnswerId)
      ..writeByte(14)
      ..write(obj.closedDate)
      ..writeByte(15)
      ..write(obj.closedReason)
      ..writeByte(16)
      ..write(obj.bountyAmount)
      ..writeByte(17)
      ..write(obj.bountyClosesDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OwnerAdapter extends TypeAdapter<Owner> {
  @override
  final int typeId = 1;

  @override
  Owner read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Owner(
      accountId: fields[0] as int?,
      reputation: fields[1] as int?,
      userId: fields[2] as int?,
      userType: fields[3] as String?,
      profileImage: fields[4] as String?,
      displayName: fields[5] as String?,
      link: fields[6] as String?,
      acceptRate: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Owner obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.accountId)
      ..writeByte(1)
      ..write(obj.reputation)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.userType)
      ..writeByte(4)
      ..write(obj.profileImage)
      ..writeByte(5)
      ..write(obj.displayName)
      ..writeByte(6)
      ..write(obj.link)
      ..writeByte(7)
      ..write(obj.acceptRate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OwnerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
