// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:crypto_telestat/config/ui_kit/theme/color_theme.dart';
import 'package:crypto_telestat/config/ui_kit/theme/text_style.dart';

abstract class _Constant {
  static const double chatCardBorderRadius = 20;
  static const double paddingV = 4;
  static const double paddingH = 8;
}

class CoinCardStyle extends ThemeExtension<CoinCardStyle> {
  final List<Color> cardColors;
  final TextStyle symbolTextStyle;
  final TextStyle priceTextStyle;
  final BorderRadius chatCoinBorderRadius;
  final EdgeInsets amountPadding;

  CoinCardStyle({
    required this.cardColors,
    required this.symbolTextStyle,
    required this.priceTextStyle,
    required this.chatCoinBorderRadius,
    required this.amountPadding,
  });

  factory CoinCardStyle.light() => CoinCardStyle(
        cardColors: [
          AppColors.red.withOpacity(0.1),
          AppColors.purble.withOpacity(0.1),
          AppColors.green.withOpacity(0.1),
          AppColors.blue.withOpacity(0.1),
        ],
        symbolTextStyle: TextStyles.title3.copyWith(color: Colors.black),
        priceTextStyle: TextStyles.footnote.copyWith(color: Colors.black),
        chatCoinBorderRadius: const BorderRadius.all(
            Radius.circular(_Constant.chatCardBorderRadius)),
        amountPadding: const EdgeInsets.symmetric(
            vertical: _Constant.paddingV, horizontal: _Constant.paddingH),
      );

  @override
  ThemeExtension<CoinCardStyle> lerp(
    covariant CoinCardStyle? other,
    double t,
  ) {
    return this;
  }

  @override
  CoinCardStyle copyWith({
    List<Color>? cardColors,
    TextStyle? symbolTextStyle,
    TextStyle? priceTextStyle,
    BorderRadius? chatCoinBorderRadius,
    EdgeInsets? amountPadding,
  }) {
    return CoinCardStyle(
      cardColors: cardColors ?? this.cardColors,
      symbolTextStyle: symbolTextStyle ?? this.symbolTextStyle,
      priceTextStyle: priceTextStyle ?? this.priceTextStyle,
      chatCoinBorderRadius: chatCoinBorderRadius ?? this.chatCoinBorderRadius,
      amountPadding: amountPadding ?? this.amountPadding,
    );
  }
}
