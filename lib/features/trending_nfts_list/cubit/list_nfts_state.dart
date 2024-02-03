part of 'list_nfts_cubit.dart';

enum ListNFTsStatus { loading, success, error, initial }

class ListNftsState extends Equatable {
  final ListNFTsStatus status;
  final Object? error;
  final List<NFTsModel> listNFTs;

  const ListNftsState({
    required this.status,
    this.error,
    required this.listNFTs,
  });

  factory ListNftsState.initial() => const ListNftsState(
        status: ListNFTsStatus.initial,
        listNFTs: [],
      );
  ListNftsState copyWith({
    ListNFTsStatus? status,
    Object? error,
    List<NFTsModel>? listNFTs,
  }) {
    return ListNftsState(
      status: status ?? this.status,
      error: error ?? this.error,
      listNFTs: listNFTs ?? this.listNFTs,
    );
  }

  @override
  List<Object?> get props => [status, error, listNFTs];
}
