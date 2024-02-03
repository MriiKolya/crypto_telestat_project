import 'package:crypto_telestat/config/ui_kit/component/coin_card.dart';
import 'package:crypto_telestat/config/ui_kit/theme/text_style.dart';
import 'package:crypto_telestat/features/trending_coins_list/cubit/list_coins_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ListTrendingCoin extends StatelessWidget {
  const ListTrendingCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I.get<ListCoinsCubit>()..getTrendingCoins(),
        child: BlocBuilder<ListCoinsCubit, ListCoinsState>(
          builder: (context, state) {
            if (state.status == ListCoinStatus.success) {
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<ListCoinsCubit>().getTrendingCoins(),
                child: ListView.builder(
                    itemCount: state.listCoin.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CoinCard(
                          index: index,
                          coin: state.listCoin[index],
                        ),
                      );
                    }),
              );
            } else if (state.status == ListCoinStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else {
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
                            context.read<ListCoinsCubit>().getTrendingCoins())
                  ],
                ),
              );
            }
          },
        ));
  }
}
