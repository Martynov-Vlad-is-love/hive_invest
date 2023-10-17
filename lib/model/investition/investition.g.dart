// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvestitionAdapter extends TypeAdapter<Investition> {
  @override
  final int typeId = 2;

  @override
  Investition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Investition(
      fields[0] as String,
      fields[1] as double,
      fields[2] as double,
      fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Investition obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.itemName)
      ..writeByte(1)
      ..write(obj.buyPrice)
      ..writeByte(2)
      ..write(obj.sellPrice)
      ..writeByte(3)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvestitionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
