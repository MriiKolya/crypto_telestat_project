import 'package:crypto_telestat/config/locale/cubit/localization_cubit.dart';
import 'package:crypto_telestat/config/ui_kit/theme/text_style.dart';
import 'package:crypto_telestat/features/trending_coins_list/list_trending_coin.dart';
import 'package:crypto_telestat/features/trending_nfts_list/list_trending_ntfts.dart';
import 'package:crypto_telestat/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CryptoApp',
          style: TextStyles.title1,
        ),
        leading: IconButton(
          icon: const Icon(Icons.language),
          onPressed: () => context.read<LocalizationCubit>().changeLocale(),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                S.of(context).trendingCoin,
                style: TextStyles.title2,
              ),
            ),
            const Expanded(child: ListTrendingCoin()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                S.of(context).trendingNfts,
                style: TextStyles.title2,
              ),
            ),
            const Expanded(child: ListTrendingNtfs()),
          ],
        ),
      )),
    );
  }
}
