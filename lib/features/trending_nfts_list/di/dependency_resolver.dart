import 'package:crypto_telestat/features/trending_nfts_list/cubit/list_nfts_cubit.dart';
import 'package:crypto_telestat/features/trending_nfts_list/data/local/nfts_service.dart';
import 'package:crypto_telestat/features/trending_nfts_list/repository/trending_nfts_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class ListNftsDependencyResolver {
  static void register() {
    GetIt.I.registerLazySingleton(
        () => TrendingNftsRepository(dio: Dio(), service: ListNFTsService()));
    GetIt.I.registerFactory<ListNftsCubit>(
      () => ListNftsCubit(
        repository: GetIt.I.get<TrendingNftsRepository>(),
      ),
    );
  }
}
