import 'package:bloc/bloc.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';
import 'package:crypto_telestat/features/trending_nfts_list/repository/trending_nfts_repository.dart';
import 'package:equatable/equatable.dart';
part 'list_nfts_state.dart';

class ListNftsCubit extends Cubit<ListNftsState> {
  final TrendingNftsRepository _repository;
  ListNftsCubit({required TrendingNftsRepository repository})
      : _repository = repository,
        super(ListNftsState.initial());

  void getTrendingNfts() async {
    try {
      if (state.status != ListNFTsStatus.success) {
        emit(state.copyWith(status: ListNFTsStatus.loading));
      }
      final listNFTs = await _repository.getTrendingNfts();
      emit(state.copyWith(status: ListNFTsStatus.success, listNFTs: listNFTs));
    } catch (e) {
      emit(state.copyWith(status: ListNFTsStatus.error, error: e));
    }
  }
}
