import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/app_colors_extentions.dart';
import 'app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Future<void> initialize() async {
    await ScreenUtil.ensureScreenSize();
    // await ScreenUtil.ensureScreenSizeAndInit(context)
  }

  static final _lightAppColors = AppColorsExtension(
    primary: const Color.fromARGB(255, 200, 160, 80),
    onPrimary: Colors.white,
    secondary: const Color.fromARGB(255, 194, 153, 8),
    onSecondary: Colors.black,
    error: const Color(0xffb00020),
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: _darkAppColors.primary,
    primaryColorDark: _darkAppColors.onBackground,
    buttonTheme: ButtonThemeData(
      hoverColor: Color.fromARGB(255, 24, 39, 66),
      buttonColor: Colors.blue,
      height: 50.sp,
      minWidth: 100.sp,
      textTheme: ButtonTextTheme.primary,

      // backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
    ),
    textTheme: TextTheme(
        titleLarge: TextStyles.body1.copyWith(
          color: _darkAppColors.onBackground,
        ),
        displayLarge: TextStyles.bodySmall.copyWith(
          color: _darkAppColors.onBackground,
        ),
        displayMedium: TextStyles.headlineMedium.copyWith(
          color: _darkAppColors.onBackground,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyles.headlineMedium
            .copyWith(color: _darkAppColors.onBackground),
        displaySmall:
            TextStyles.h6.copyWith(color: _darkAppColors.onBackground),
        labelSmall: TextStyles.h6.copyWith(color: _darkAppColors.onBackground),
        bodyLarge:
            TextStyles.bodyLarge.copyWith(color: _darkAppColors.onBackground),
        bodySmall:
            TextStyles.bodySmall.copyWith(color: _darkAppColors.onBackground),
        titleMedium:
            TextStyles.titleMedium.copyWith(color: _darkAppColors.onBackground),
        // Note: Default text style for Text widget.
        labelLarge: TextStyles.h6.copyWith(
          color: _darkAppColors.onBackground,
        ),
        labelMedium:
            TextStyles.body1.copyWith(color: _darkAppColors.onBackground),
        bodyMedium:
            TextStyles.bodyMediuum.copyWith(color: _darkAppColors.onBackground),
        headlineLarge: TextStyles.headlineLarge
            .copyWith(color: _darkAppColors.onBackground),
        headlineSmall: TextStyles.headlineSmall
            .copyWith(color: _darkAppColors.onBackground)),
    extensions: [
      _darkAppColors,
    ],
  );

  static final _darkAppColors = AppColorsExtension(
    primary: const Color.fromARGB(255, 125, 86, 8),
    onPrimary: Colors.black,
    secondary: const Color(0xff03dac6),
    onSecondary: Colors.black,
    error: const Color(0xffcf6679),
    onError: Colors.black,
    background: const Color.fromARGB(255, 31, 29, 29),
    onBackground: Colors.white,
    surface: const Color.fromARGB(255, 41, 39, 39),
    onSurface: Colors.white,
  );

  static final light = () {
    final defaultTheme = ThemeData.light();

    return defaultTheme.copyWith(
      primaryColor: _lightAppColors.primary,
      primaryColorDark: _darkAppColors.primary,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.white),
      dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyles.body1.copyWith(color: Colors.black54)),
          textStyle:
              TextStyles.body1.copyWith(color: _lightAppColors.onBackground)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyles.body1.copyWith(
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _lightAppColors.primary,
        linearMinHeight: 30.0,
        circularTrackColor: _lightAppColors.background,
      ),
      drawerTheme: DrawerThemeData(
          backgroundColor: _lightAppColors.onPrimary,
          elevation: 0,
          surfaceTintColor: _lightAppColors.onPrimary,
          width: 300,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
          ))),
      listTileTheme: const ListTileThemeData(
        style: ListTileStyle.drawer,
        leadingAndTrailingTextStyle: TextStyles.body1,
        titleTextStyle: TextStyles.body1,
        // minVerticalPadding: 20,
        subtitleTextStyle: TextStyles.body1,
        enableFeedback: true,
        titleAlignment: ListTileTitleAlignment.center,
        horizontalTitleGap: 20,
        visualDensity: VisualDensity.comfortable,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        iconColor: Colors.black,
        textColor: Colors.black,
        tileColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
      ),
      tabBarTheme: TabBarTheme(
        dividerColor: _lightAppColors.secondary,
        indicatorColor: _lightAppColors.onPrimary,
        labelColor: _lightAppColors.onPrimary,
        unselectedLabelStyle: TextStyles.body1.copyWith(color: Colors.white60),
        labelStyle: TextStyles.bodyLarge.copyWith(
          color: _lightAppColors.onPrimary,
        ),
      ),
      // bottomAppBarTheme: BottomAppBarTheme(
      //   color: _lightAppColors.onPrimary,
      // ),
      appBarTheme: AppBarTheme(
        backgroundColor: _lightAppColors.primary,
        toolbarTextStyle: TextStyles.body1.copyWith(
          color: _lightAppColors.onPrimary,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        foregroundColor: _lightAppColors.onPrimary,
        titleTextStyle: TextStyles.h3.copyWith(fontWeight: FontWeight.w600),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: _lightAppColors.onPrimary,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightAppColors.primary,
        foregroundColor: _lightAppColors.onPrimary,
        // elevation: 0,
        // highlightElevation: 0,
        // hoverElevation: 0,
        // disabledElevation: 0,
        // focusElevation: 0,
        splashColor: _lightAppColors.primary,
        hoverColor: _lightAppColors.primary,
        focusColor: _lightAppColors.secondary,
        // extendedTextStyle: AppTypography.body1.copyWith(
        //   color: _darkAppColors.background,
        // ),
      ),
      textTheme: defaultTheme.textTheme.copyWith(
          titleLarge: TextStyles.body1.copyWith(
            color: _lightAppColors.onBackground,
          ),
          displayLarge: TextStyles.headlineMedium.copyWith(
            color: _lightAppColors.onBackground,
          ),
          displayMedium: TextStyles.headlineMedium.copyWith(
            color: _lightAppColors.onBackground,
            fontWeight: FontWeight.w600,
          ),
          headlineMedium: TextStyles.headlineMedium
              .copyWith(color: _lightAppColors.onBackground),
          displaySmall:
              TextStyles.h6.copyWith(color: _lightAppColors.onBackground),
          labelSmall:
              TextStyles.h6.copyWith(color: _lightAppColors.onBackground),
          bodyLarge: TextStyles.bodyLarge
              .copyWith(color: _lightAppColors.onBackground),
          bodySmall: TextStyles.bodySmall
              .copyWith(color: _lightAppColors.onBackground),
          titleMedium: TextStyles.titleMedium
              .copyWith(color: _lightAppColors.onBackground),
          // Note: Default text style for Text widget.
          labelLarge: TextStyles.h6.copyWith(
            color: _lightAppColors.onBackground,
          ),
          labelMedium:
              TextStyles.body1.copyWith(color: _lightAppColors.onBackground),
          bodyMedium:
              TextStyles.body1.copyWith(color: _lightAppColors.onBackground),
          headlineLarge: TextStyles.headlineLarge
              .copyWith(color: _lightAppColors.onBackground),
          headlineSmall: TextStyles.bodySmall
              .copyWith(color: _lightAppColors.onBackground)),
      extensions: [
        _lightAppColors,
      ],
    );
  }();
}

extension AppThemeExtension on ThemeData {
  // / Usage example: Theme.of(context).appColors;
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme._lightAppColors;

  AppColorsExtension get appColorsDark =>
      extension<AppColorsExtension>() ?? AppTheme._darkAppColors;
}
