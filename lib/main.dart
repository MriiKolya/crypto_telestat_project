import 'package:crypto_telestat/application.dart';
import 'package:crypto_telestat/core/di/app_dependency_resolver.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/coin_data_model.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/coin_model.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/price_change_percent.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_data_model.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CoinDataAdapter());
  Hive.registerAdapter(CoinModelAdapter());
  Hive.registerAdapter(PriceChangePercentage24hAdapter());
  Hive.registerAdapter(NFTsModelAdapter());
  Hive.registerAdapter(NFTsDataAdapter());
  AppDependencyResolver.register();
  runApp(const Application());
}
