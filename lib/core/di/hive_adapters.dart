import 'package:crypto_telestat/features/trending_coins_list/model/coin_data_model.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/coin_model.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/price_change_percent.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_data_model.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';
import 'package:hive/hive.dart';

abstract class AppHiveAdapter {
  static void register() {
    Hive.registerAdapter(CoinDataAdapter());
    Hive.registerAdapter(CoinModelAdapter());
    Hive.registerAdapter(PriceChangePercentage24hAdapter());
    Hive.registerAdapter(NFTsModelAdapter());
    Hive.registerAdapter(NFTsDataAdapter());
  }
}
