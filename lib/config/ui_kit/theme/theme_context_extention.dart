import 'package:crypto_telestat/config/ui_kit/component_style/card_style.dart';
import 'package:flutter/material.dart';

extension ThemeContextExtention on BuildContext {
  CoinCardStyle get cardStyle => Theme.of(this).extension<CoinCardStyle>()!;
}
