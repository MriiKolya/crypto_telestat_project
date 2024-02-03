// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoinDataAdapter extends TypeAdapter<CoinData> {
  @override
  final int typeId = 1;

  @override
  CoinData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoinData(
      sparkline: fields[0] as String,
      price: fields[1] as String,
      priceChangePercentage24h: fields[2] as PriceChangePercentage24h,
    );
  }

  @override
  void write(BinaryWriter writer, CoinData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.sparkline)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.priceChangePercentage24h);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoinDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinData _$CoinDataFromJson(Map<String, dynamic> json) => CoinData(
      sparkline: json['sparkline'] as String,
      price: json['price'] as String,
      priceChangePercentage24h: PriceChangePercentage24h.fromJson(
          json['price_change_percentage_24h'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinDataToJson(CoinData instance) => <String, dynamic>{
      'sparkline': instance.sparkline,
      'price': instance.price,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
    };
