import 'package:crypto_telestat/features/trending_coins_list/model/coin_model.dart';
import 'package:hive/hive.dart';

class ListCoinService {
  final String _boxName = 'list_coin_box';

  Future<Box<CoinModel>> get _box async =>
      await Hive.openBox<CoinModel>(_boxName);

  Future<List<CoinModel>> getListCoin() async {
    var box = await _box;
    return box.values.toList();
  }

  Future<void> uploadListCoin(List<CoinModel> coinList) async {
    var box = await _box;
    final coinMap = {for (var e in coinList) e.symbol: e};
    box.putAll(coinMap);
  }
}
