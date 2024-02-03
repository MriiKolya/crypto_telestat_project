import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';
import 'package:hive/hive.dart';

class ListNFTsService {
  final String _boxName = 'list_nfts_box';

  Future<Box<NFTsModel>> get _box async =>
      await Hive.openBox<NFTsModel>(_boxName);

  Future<List<NFTsModel>> getNftsList() async {
    var box = await _box;
    return box.values.toList();
  }

  Future<void> uploadNftsList(List<NFTsModel> nftsList) async {
    var box = await _box;
    final coinMap = {for (var e in nftsList) e.symbol: e};
    box.putAll(coinMap);
  }
}
