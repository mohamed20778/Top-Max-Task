import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/di/di.dart';
import 'features/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // Load environment variables before any API config reads
  await dotenv.load();
  await configureDependencies();
  runApp(
    const MyApp(),
  );
}
