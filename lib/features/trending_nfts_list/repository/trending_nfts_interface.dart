import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';

abstract interface class ITrendingNftsRepository {
  Future<List<NFTsModel>> getTrendingNfts();
}
