// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:crypto_telestat/config/hive_constant.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/price_change_percent.dart';

part 'coin_data_model.g.dart';

@HiveType(typeId: HiveTypeId.coinData)
@JsonSerializable()
class CoinData extends Equatable {
  @HiveField(0)
  final String sparkline;

  @HiveField(1)
  final String price;

  @HiveField(2)
  @JsonKey(name: 'price_change_percentage_24h')
  final PriceChangePercentage24h priceChangePercentage24h;

  const CoinData({
    required this.sparkline,
    required this.price,
    required this.priceChangePercentage24h,
  });

  factory CoinData.fromJson(Map<String, dynamic> json) =>
      _$CoinDataFromJson(json);

  Map<String, dynamic> toJson() => _$CoinDataToJson(this);

  @override
  List<Object> get props => [sparkline, price, priceChangePercentage24h];
}
