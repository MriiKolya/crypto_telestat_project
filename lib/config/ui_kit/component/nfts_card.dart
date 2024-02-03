import 'package:crypto_telestat/config/ui_kit/theme/color_theme.dart';
import 'package:crypto_telestat/config/ui_kit/theme/theme_context_extention.dart';
import 'package:crypto_telestat/features/trending_nfts_list/model/nfts_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NFTsCard extends StatelessWidget {
  const NFTsCard({
    super.key,
    required this.index,
    required this.nfts,
    this.onTap,
  });

  final int index;
  final NFTsModel nfts;
  final void Function()? onTap;

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
              radius: 20,
              foregroundImage: NetworkImage(
                nfts.imageUrl,
              ),
            ),
            title: Text(nfts.symbol, style: style.symbolTextStyle),
            subtitle: Text(
              '${double.parse(nfts.data.floorPrice24hPercentChange).toStringAsFixed(2)} %',
              style: style.priceTextStyle.copyWith(
                color: double.parse(nfts.data.floorPrice24hPercentChange) < 0
                    ? AppColors.red
                    : double.parse(nfts.data.floorPrice24hPercentChange) == 0
                        ? AppColors.grey
                        : Colors.green,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  nfts.data.floorPrice,
                  style: style.priceTextStyle,
                ),
                const SizedBox(width: 50),
                SvgPicture.network(
                  nfts.data.sparkline,
                  height: 30,
                  width: 10,
                ),
              ],
            ),
          )),
    );
  }
}
