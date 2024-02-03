part of 'list_coins_cubit.dart';

enum ListCoinStatus { loading, success, error, initial }

class ListCoinsState extends Equatable {
  final ListCoinStatus status;
  final Object? error;
  final List<CoinModel> listCoin;

  const ListCoinsState({
    required this.status,
    this.error,
    required this.listCoin,
  });

  factory ListCoinsState.initial() => const ListCoinsState(
        status: ListCoinStatus.initial,
        listCoin: [],
      );
  ListCoinsState copyWith({
    ListCoinStatus? status,
    Object? error,
    List<CoinModel>? listCoin,
  }) {
    return ListCoinsState(
      status: status ?? this.status,
      error: error ?? this.error,
      listCoin: listCoin ?? this.listCoin,
    );
  }

  @override
  List<Object?> get props => [status, listCoin, error];
}
