import 'package:crypto_telestat/config/locale/cubit/localization_cubit.dart';
import 'package:crypto_telestat/config/ui_kit/theme/light_theme.dart';
import 'package:crypto_telestat/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:crypto_telestat/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Flutter Demo',
            theme: lightTheme,
            locale: state.locale,
            home: const DashboardScreen(),
          );
        },
      ),
    );
  }
}
