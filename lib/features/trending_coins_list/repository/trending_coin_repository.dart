import 'package:crypto_telestat/features/trending_coins_list/data/model/coin_model.dart';
import 'package:crypto_telestat/features/trending_coins_list/repository/trending_coin_interface.dart';
import 'package:crypto_telestat/features/trending_coins_list/data/local/list_coin_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TrendingCoinRepository implements ITrendingCoinRepository {
  final Dio _dio;
  final ListCoinService _service;

  TrendingCoinRepository({required Dio dio, required ListCoinService service})
      : _dio = dio,
        _service = service;

  @override
  Future<List<CoinModel>> getTrendingCoins() async {
    try {
      final response =
          await _dio.get('https://api.coingecko.com/api/v3/search/trending');
      final data = response.data as Map<String, dynamic>;
      final coinList = (data['coins'] as List)
          .map((coin) => CoinModel.fromJson(coin['item']))
          .toList();
      await _service.uploadListCoin(coinList);
      return coinList;
    } catch (e) {
      debugPrint(e.toString());
      return await _service.getListCoin();
    }
  }
}
