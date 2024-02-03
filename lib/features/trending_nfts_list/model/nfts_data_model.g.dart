// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfts_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NFTsDataAdapter extends TypeAdapter<NFTsData> {
  @override
  final int typeId = 4;

  @override
  NFTsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NFTsData(
      floorPrice24hPercentChange: fields[0] as String,
      sparkline: fields[2] as String,
      floorPrice: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NFTsData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.floorPrice24hPercentChange)
      ..writeByte(2)
      ..write(obj.sparkline)
      ..writeByte(3)
      ..write(obj.floorPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NFTsData _$NFTsDataFromJson(Map<String, dynamic> json) => NFTsData(
      floorPrice24hPercentChange:
          json['floor_price_in_usd_24h_percentage_change'] as String,
      sparkline: json['sparkline'] as String,
      floorPrice: json['floor_price'] as String,
    );

Map<String, dynamic> _$NFTsDataToJson(NFTsData instance) => <String, dynamic>{
      'floor_price_in_usd_24h_percentage_change':
          instance.floorPrice24hPercentChange,
      'sparkline': instance.sparkline,
      'floor_price': instance.floorPrice,
    };
