import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:crypto_telestat/config/hive_constant.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_data_model.dart';

part 'nfts_model.g.dart';

@HiveType(typeId: HiveTypeId.nftsModel)
@JsonSerializable()
class NFTsModel extends Equatable {
  @HiveField(0)
  final String symbol;

  @HiveField(1)
  @JsonKey(name: 'thumb')
  final String imageUrl;

  @HiveField(2)
  final NFTsData data;

  const NFTsModel({
    required this.data,
    required this.symbol,
    required this.imageUrl,
  });

  factory NFTsModel.fromJson(Map<String, dynamic> json) =>
      _$NFTsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NFTsModelToJson(this);

  @override
  List<Object> get props => [symbol, imageUrl, data];
}
