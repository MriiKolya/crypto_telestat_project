import 'package:crypto_telestat/config/ui_kit/component_style/card_style.dart';

import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    CoinCardStyle.light(),
  ],
);
