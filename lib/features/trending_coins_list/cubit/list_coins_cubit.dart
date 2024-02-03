import 'package:bloc/bloc.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/coin_model.dart';
import 'package:crypto_telestat/features/trending_coins_list/repository/trending_coin_repository.dart';
import 'package:equatable/equatable.dart';

part 'list_coins_state.dart';

class ListCoinsCubit extends Cubit<ListCoinsState> {
  final TrendingCoinRepository _repository;
  ListCoinsCubit({required TrendingCoinRepository repository})
      : _repository = repository,
        super(ListCoinsState.initial());

  void getTrendingCoins() async {
    try {
      if (state.status != ListCoinStatus.success) {
        emit(state.copyWith(status: ListCoinStatus.loading));
      }
      final listCoin = await _repository.getTrendingCoins();
      emit(state.copyWith(status: ListCoinStatus.success, listCoin: listCoin));
    } catch (e) {
      emit(state.copyWith(status: ListCoinStatus.error, error: e));
    }
  }
}
