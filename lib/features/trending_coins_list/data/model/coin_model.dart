// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:crypto_telestat/features/trending_coins_list/data/model/coin_data_model.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:crypto_telestat/config/hive_constant.dart';

part 'coin_model.g.dart';

@HiveType(typeId: HiveTypeId.coinModel)
@JsonSerializable()
class CoinModel extends Equatable {
  @HiveField(0)
  final String symbol;

  @HiveField(1)
  final CoinData data;

  @HiveField(2)
  @JsonKey(name: 'small')
  final String imageUrl;

  @HiveField(3)
  @JsonKey(name: 'market_cap_rank')
  final int marketCapRank;

  const CoinModel({
    required this.data,
    required this.symbol,
    required this.imageUrl,
    required this.marketCapRank,
  });

  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinModelToJson(this);

  @override
  List<Object> get props => [symbol, data, imageUrl, marketCapRank];
}
