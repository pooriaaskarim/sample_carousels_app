import 'package:flutter/material.dart';

import 'app.theme_data.dart';
import 'components_theme/app.page_transition_theme.dart';
import 'components_theme/app.theme_data.app_bar.dart';
import 'components_theme/app.theme_data.button.elevated.dart';
import 'components_theme/app.theme_data.button.filled.dart';
import 'components_theme/app.theme_data.button.icon.dart';
import 'components_theme/app.theme_data.button.outlined.dart';
import 'components_theme/app.theme_data.button.text.dart';
import 'components_theme/app.theme_data.dialog.dart';
import 'components_theme/app.theme_data.drawer.dart';
import 'components_theme/app.theme_data.floating_action_button.dart';
import 'components_theme/app.theme_data.input_decoration.dart';
import 'components_theme/app.theme_data.search_bar.dart';
import 'components_theme/app.theme_data.snack_bar.dart';
import 'components_theme/app.theme_data.tab_bar.dart';

class AppThemes {
  AppThemes._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppAppbarThemeData.from(AppThemeData.lightColorScheme),
    brightness: Brightness.light,
    colorScheme: AppThemeData.lightColorScheme,
    dialogTheme: AppDialogThemeData(AppThemeData.lightColorScheme),
    drawerTheme: const AppDrawerThemeData(AppThemeData.lightColorScheme),
    elevatedButtonTheme: AppElevatedButtonThemeData.from(
      AppThemeData.lightColorScheme,
    ),
    filledButtonTheme:
        AppFilledButtonThemeData.from(AppThemeData.lightColorScheme),
    floatingActionButtonTheme: AppFloatingActionButtonThemeData.from(
      AppThemeData.lightColorScheme,
    ),
    iconButtonTheme: AppIconButtonThemeData.from(AppThemeData.lightColorScheme),
    inputDecorationTheme:
        AppInputDecorationData.from(AppThemeData.lightColorScheme),
    outlinedButtonTheme:
        AppOutlinedButtonThemeData.from(AppThemeData.lightColorScheme),
    primaryColorDark: AppThemeData.darkColorScheme.primary,
    primaryColorLight: AppThemeData.lightColorScheme.primary,
    pageTransitionsTheme: AppPageTransitionsTheme(),
    searchBarTheme: AppSearchBarThemeData.from(AppThemeData.lightColorScheme),
    snackBarTheme: const AppSnackBarThemeData(),
    tabBarTheme: AppTabBarThemeData.from(AppThemeData.lightColorScheme),
    textButtonTheme: AppTextButtonThemeData(AppThemeData.lightColorScheme),
    textTheme: AppThemeData.textTheme,
    useMaterial3: true,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppAppbarThemeData.from(AppThemeData.darkColorScheme),
    brightness: Brightness.dark,
    colorScheme: AppThemeData.darkColorScheme,
    dialogTheme: AppDialogThemeData(AppThemeData.darkColorScheme),
    drawerTheme: const AppDrawerThemeData(AppThemeData.darkColorScheme),
    elevatedButtonTheme: AppElevatedButtonThemeData.from(
      AppThemeData.darkColorScheme,
    ),
    filledButtonTheme:
        AppFilledButtonThemeData.from(AppThemeData.darkColorScheme),
    floatingActionButtonTheme: AppFloatingActionButtonThemeData.from(
      AppThemeData.darkColorScheme,
    ),
    iconButtonTheme: AppIconButtonThemeData.from(AppThemeData.darkColorScheme),
    inputDecorationTheme:
        AppInputDecorationData.from(AppThemeData.darkColorScheme),
    outlinedButtonTheme:
        AppOutlinedButtonThemeData.from(AppThemeData.darkColorScheme),
    primaryColor: AppThemeData.darkColorScheme.primary,
    primaryColorDark: AppThemeData.darkColorScheme.primary,
    primaryColorLight: AppThemeData.lightColorScheme.primary,
    pageTransitionsTheme: AppPageTransitionsTheme(),
    searchBarTheme: AppSearchBarThemeData.from(AppThemeData.darkColorScheme),
    snackBarTheme: const AppSnackBarThemeData(),
    tabBarTheme: AppTabBarThemeData.from(AppThemeData.darkColorScheme),
    textButtonTheme: AppTextButtonThemeData(AppThemeData.darkColorScheme),
    textTheme: AppThemeData.textTheme,
    useMaterial3: true,
  );
}
