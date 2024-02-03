import 'package:crypto_telestat/features/trending_nfts_list/data/local/nfts_service.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';
import 'package:crypto_telestat/features/trending_nfts_list/repository/trending_nfts_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TrendingNftsRepository implements ITrendingNftsRepository {
  final Dio _dio;
  final ListNFTsService _service;

  TrendingNftsRepository({
    required Dio dio,
    required ListNFTsService service,
  })  : _dio = dio,
        _service = service;

  @override
  Future<List<NFTsModel>> getTrendingNfts() async {
    try {
      final response =
          await _dio.get('https://api.coingecko.com/api/v3/search/trending');
      final data = response.data as Map<String, dynamic>;
      final nftsList = (data['nfts'] as List)
          .map((coin) => NFTsModel.fromJson(coin))
          .toList();
      _service.uploadNftsList(nftsList);
      return nftsList;
    } catch (e) {
      debugPrint(e.toString());
      final list = await _service.getNftsList();
      return list;
    }
  }
}
