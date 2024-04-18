// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaceAdapter extends TypeAdapter<Place> {
  @override
  final int typeId = 5;

  @override
  Place read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Place(
      name: fields[0] as String?,
      description: fields[1] as String?,
      address: fields[2] as String?,
      date: fields[3] as DateTime?,
      feedback: fields[4] as FeedBack?,
      duration: fields[5] as int?,
      companionship: fields[6] as Companionship?,
      attractions: (fields[7] as List?)?.cast<Attraction>(),
      games: (fields[8] as List?)?.cast<Game>(),
      willReturn: fields[9] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Place obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.feedback)
      ..writeByte(5)
      ..write(obj.duration)
      ..writeByte(6)
      ..write(obj.companionship)
      ..writeByte(7)
      ..write(obj.attractions)
      ..writeByte(8)
      ..write(obj.games)
      ..writeByte(9)
      ..write(obj.willReturn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
