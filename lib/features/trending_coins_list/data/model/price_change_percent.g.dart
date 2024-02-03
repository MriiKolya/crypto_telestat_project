// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_change_percent.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PriceChangePercentage24hAdapter
    extends TypeAdapter<PriceChangePercentage24h> {
  @override
  final int typeId = 3;

  @override
  PriceChangePercentage24h read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PriceChangePercentage24h(
      pln: fields[0] as double,
      uah: fields[1] as double,
      usd: fields[2] as double,
      eur: fields[3] as double,
      btc: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, PriceChangePercentage24h obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.pln)
      ..writeByte(1)
      ..write(obj.uah)
      ..writeByte(2)
      ..write(obj.usd)
      ..writeByte(3)
      ..write(obj.eur)
      ..writeByte(4)
      ..write(obj.btc);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceChangePercentage24hAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceChangePercentage24h _$PriceChangePercentage24hFromJson(
        Map<String, dynamic> json) =>
    PriceChangePercentage24h(
      pln: (json['pln'] as num).toDouble(),
      uah: (json['uah'] as num).toDouble(),
      usd: (json['usd'] as num).toDouble(),
      eur: (json['eur'] as num).toDouble(),
      btc: (json['btc'] as num).toDouble(),
    );

Map<String, dynamic> _$PriceChangePercentage24hToJson(
        PriceChangePercentage24h instance) =>
    <String, dynamic>{
      'pln': instance.pln,
      'uah': instance.uah,
      'usd': instance.usd,
      'eur': instance.eur,
      'btc': instance.btc,
    };
