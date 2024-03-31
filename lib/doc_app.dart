import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/routes/app_router.dart';
import 'package:flutter_advanced_with_firebase/core/routes/routes.dart';
import 'package:flutter_advanced_with_firebase/core/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  DocApp({super.key, required this.appRouter});

  // ThemeData themeData = AppTheme.light;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(375, 689));
    return ScreenUtilInit(
      // designSize: const Size(375, 690),
      minTextAdapt: false,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "house",
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        onGenerateRoute: appRouter.genratedRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
