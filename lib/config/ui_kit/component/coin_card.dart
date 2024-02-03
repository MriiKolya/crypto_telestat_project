import 'package:crypto_telestat/config/ui_kit/theme/color_theme.dart';
import 'package:crypto_telestat/config/ui_kit/theme/theme_context_extention.dart';
import 'package:crypto_telestat/features/trending_coins_list/model/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinCard extends StatelessWidget {
  const CoinCard({
    super.key,
    required this.index,
    required this.coin,
    this.onTap,
  });

  final int index;
  final void Function()? onTap;
  final CoinModel coin;

  @override
  Widget build(BuildContext context) {
    final style = context.cardStyle;
    return GestureDetector(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: style.cardColors[index % style.cardColors.length],
          borderRadius: style.chatCoinBorderRadius,
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 15,
            foregroundImage: NetworkImage(
              coin.imageUrl,
            ),
          ),
          title: Text(coin.symbol, style: style.symbolTextStyle),
          subtitle: Text(
            '${coin.data.priceChangePercentage24h.usd.toStringAsFixed(2)} %',
            style: style.priceTextStyle.copyWith(
              color: coin.data.priceChangePercentage24h.usd < 0
                  ? AppColors.red
                  : coin.data.priceChangePercentage24h.usd == 0
                      ? AppColors.grey
                      : Colors.green,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                coin.data.price,
                style: style.symbolTextStyle,
              ),
              const SizedBox(width: 50),
              SvgPicture.network(
                coin.data.sparkline,
                height: 30,
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
