// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfts_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NFTsModelAdapter extends TypeAdapter<NFTsModel> {
  @override
  final int typeId = 5;

  @override
  NFTsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NFTsModel(
      data: fields[2] as NFTsData,
      symbol: fields[0] as String,
      imageUrl: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NFTsModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.symbol)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NFTsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NFTsModel _$NFTsModelFromJson(Map<String, dynamic> json) => NFTsModel(
      data: NFTsData.fromJson(json['data'] as Map<String, dynamic>),
      symbol: json['symbol'] as String,
      imageUrl: json['thumb'] as String,
    );

Map<String, dynamic> _$NFTsModelToJson(NFTsModel instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'thumb': instance.imageUrl,
      'data': instance.data,
    };
