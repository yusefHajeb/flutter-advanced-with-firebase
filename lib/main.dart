import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/routes/app_router.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_theme.dart';
import 'package:flutter_advanced_with_firebase/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  await AppTheme.initialize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
