import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/routes/app_router.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_theme.dart';
import 'package:flutter_advanced_with_firebase/doc_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGtIt();
  await ScreenUtil.ensureScreenSize();
  WidgetsBinding widgetsFlutterBinding =
      WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsFlutterBinding);
  FlutterNativeSplash.remove();
  await AppTheme.initialize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
