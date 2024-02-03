import 'package:crypto_telestat/features/trending_coins_list/di/dependency_resolver.dart';
import 'package:crypto_telestat/features/trending_nfts_list/di/dependency_resolver.dart';

class AppDependencyResolver {
  static void register() {
    ListCoinDependencyResolver.register();
    ListNftsDependencyResolver.register();
  }
}
