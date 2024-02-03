import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:crypto_telestat/config/hive_constant.dart';

part 'nfts_data_model.g.dart';

@HiveType(typeId: HiveTypeId.nftsData)
@JsonSerializable()
class NFTsData extends Equatable {
  @HiveField(0)
  @JsonKey(name: 'floor_price_in_usd_24h_percentage_change')
  @HiveField(1)
  final String floorPrice24hPercentChange;

  @HiveField(2)
  final String sparkline;

  @HiveField(3)
  @JsonKey(name: 'floor_price')
  final String floorPrice;

  factory NFTsData.fromJson(Map<String, dynamic> json) =>
      _$NFTsDataFromJson(json);

  const NFTsData({
    required this.floorPrice24hPercentChange,
    required this.sparkline,
    required this.floorPrice,
  });

  Map<String, dynamic> toJson() => _$NFTsDataToJson(this);

  @override
  List<Object> get props => [floorPrice24hPercentChange, sparkline, floorPrice];
}
