import 'package:flutter/material.dart';
import 'package:travel_tips/src/core/presentation/colors.dart';
import 'package:travel_tips/src/core/presentation/constants.dart';
import 'package:travel_tips/src/core/presentation/topography.dart';

class AppThemes {
  AppThemes._();

  /// Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.primaryDarkFontColor,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
    ),
    fontFamily: Constants.fontFamily,
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTypography.appBarTitleTextStyle.copyWith(
        color: AppColors.primaryLightFontColor,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actionsIconTheme: const IconThemeData(color: Colors.black),
    ),
    textTheme: const TextTheme(
      bodyLarge: AppTypography.largeBodyTextStyle,
      bodyMedium: AppTypography.mediumBodyTextStyle,
      bodySmall: AppTypography.smallBodyTextStyle,
    ),
    tabBarTheme: const TabBarTheme(
      labelStyle: AppTypography.tabBarLabelTextStyle,
      unselectedLabelStyle: AppTypography.tabBarLabelUnselectedTextStyle,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.floatingActionButtonLightColor,
      foregroundColor: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.black),
  );

  /// Dark Theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryLightFontColor,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
    ),
    fontFamily: Constants.fontFamily,
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTypography.appBarTitleTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actionsIconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      bodyLarge: AppTypography.largeBodyTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
      bodyMedium: AppTypography.mediumBodyTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
      bodySmall: AppTypography.smallBodyTextStyle.copyWith(
        color: AppColors.primaryDarkFontColor,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: AppTypography.tabBarLabelTextStyle,
      unselectedLabelStyle:
          AppTypography.tabBarLabelUnselectedTextStyle.copyWith(
        color: AppColors.secondaryDarkFontColor,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.floatingActionButtonDarkColor,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}

extension ThemeDataX on ThemeData {
  bool get isDark => brightness == Brightness.dark;

  TextStyle get largeTitlePrimaryTextStyle => isDark
      ? AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.largeTitleTextStyle;

  TextStyle get largeTitleSecondaryTextStyle => isDark
      ? AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get largeTitleTertiaryTextStyle => isDark
      ? AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.largeTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
  TextStyle get extraLargeTitlePrimaryTextStyle => isDark
      ? AppTypography.extraLargeTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.extraLargeTitleTextStyle;

  TextStyle get extraLargeTitleSecondaryTextStyle => isDark
      ? AppTypography.extraLargeTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.extraLargeTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get extraLargeTitleTertiaryTextStyle => isDark
      ? AppTypography.extraLargeTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.extraLargeTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
  TextStyle get mediumTitlePrimaryTextStyle => isDark
      ? AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.mediumTitleTextStyle;

  TextStyle get mediumTitleSecondaryTextStyle => isDark
      ? AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get mediumTitleTertiaryTextStyle => isDark
      ? AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.mediumTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
  TextStyle get smallTitlePrimaryTextStyle => isDark
      ? AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.smallTitleTextStyle;

  TextStyle get smallTitleSecondaryTextStyle => isDark
      ? AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get smallTitleTertiaryTextStyle => isDark
      ? AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.smallTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );

  TextStyle get extraSmallTitlePrimaryTextStyle => isDark
      ? AppTypography.extraSmallTitleTextStyle.copyWith(
          color: AppColors.primaryDarkFontColor,
        )
      : AppTypography.extraSmallTitleTextStyle;

  TextStyle get extraSmallTitleSecondaryTextStyle => isDark
      ? AppTypography.extraSmallTitleTextStyle.copyWith(
          color: AppColors.secondaryDarkFontColor,
        )
      : AppTypography.extraSmallTitleTextStyle.copyWith(
          color: AppColors.secondaryLightFontColor,
        );

  TextStyle get extraSmallTitleTertiaryTextStyle => isDark
      ? AppTypography.extraSmallTitleTextStyle.copyWith(
          color: AppColors.tertiaryDarkFontColor,
        )
      : AppTypography.extraSmallTitleTextStyle.copyWith(
          color: AppColors.tertiaryLightFontColor,
        );
}
