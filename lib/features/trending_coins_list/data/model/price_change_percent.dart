// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:crypto_telestat/config/hive_constant.dart';

part 'price_change_percent.g.dart';

@HiveType(typeId: HiveTypeId.priceChangeModel)
@JsonSerializable()
class PriceChangePercentage24h extends Equatable {
  @HiveField(0)
  final double pln;
  @HiveField(1)
  final double uah;
  @HiveField(2)
  final double usd;
  @HiveField(3)
  final double eur;
  @HiveField(4)
  final double btc;

  const PriceChangePercentage24h({
    required this.pln,
    required this.uah,
    required this.usd,
    required this.eur,
    required this.btc,
  });

  factory PriceChangePercentage24h.fromJson(Map<String, dynamic> json) =>
      _$PriceChangePercentage24hFromJson(json);

  Map<String, dynamic> toJson() => _$PriceChangePercentage24hToJson(this);

  @override
  List<Object> get props {
    return [
      pln,
      uah,
      usd,
      eur,
      btc,
    ];
  }
}
