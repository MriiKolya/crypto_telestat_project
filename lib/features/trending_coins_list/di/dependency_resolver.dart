import 'package:crypto_telestat/features/trending_coins_list/cubit/list_coins_cubit.dart';
import 'package:crypto_telestat/features/trending_coins_list/data/local/list_coin_service.dart';
import 'package:crypto_telestat/features/trending_coins_list/repository/trending_coin_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class ListCoinDependencyResolver {
  static void register() {
    GetIt.I.registerLazySingleton(
        () => TrendingCoinRepository(dio: Dio(), service: ListCoinService()));
    GetIt.I.registerFactory<ListCoinsCubit>(
      () => ListCoinsCubit(
        repository: GetIt.I.get<TrendingCoinRepository>(),
      ),
    );
  }
}
