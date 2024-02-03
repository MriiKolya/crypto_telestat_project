import 'package:crypto_telestat/config/ui_kit/component/nfts_card.dart';
import 'package:crypto_telestat/config/ui_kit/theme/text_style.dart';
import 'package:crypto_telestat/features/trending_nfts_list/cubit/list_nfts_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ListTrendingNtfs extends StatelessWidget {
  const ListTrendingNtfs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I.get<ListNftsCubit>()..getTrendingNfts(),
        child: BlocBuilder<ListNftsCubit, ListNftsState>(
          builder: (context, state) {
            if (state.status == ListNFTsStatus.success) {
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<ListNftsCubit>()..getTrendingNfts(),
                child: ListView.builder(
                    itemCount: state.listNFTs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: NFTsCard(
                          index: index,
                          nfts: state.listNFTs[index],
                        ),
                      );
                    }),
              );
            } else if (state.status == ListNFTsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Center(
                child: Column(
              children: [
                const Text(
                  'Please try again latter',
                  style: TextStyles.title2,
                ),
                CupertinoButton(
                    child: const Text(
                      'try again',
                      style: TextStyles.body,
                    ),
                    onPressed: () =>
                        context.read<ListNftsCubit>().getTrendingNfts())
              ],
            ));
          },
        ));
  }
}
