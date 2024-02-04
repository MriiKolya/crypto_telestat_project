import 'package:crypto_telestat/application.dart';
import 'package:crypto_telestat/core/di/app_dependency_resolver.dart';
import 'package:crypto_telestat/core/di/hive_adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  AppHiveAdapter.register();
  AppDependencyResolver.register();
  debugRepaintRainbowEnabled = true;
  runApp(const Application());
}
