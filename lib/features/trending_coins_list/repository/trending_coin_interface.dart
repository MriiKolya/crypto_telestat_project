import 'package:crypto_telestat/features/trending_coins_list/data/model/coin_model.dart';

abstract interface class ITrendingCoinRepository {
  Future<List<CoinModel>> getTrendingCoins();
}
