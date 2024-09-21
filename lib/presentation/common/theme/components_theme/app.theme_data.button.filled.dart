import 'package:flutter/material.dart';

import '../../utils/app.constants.dart';
import '../../utils/app.sizes.dart';
import '../app.fonts.dart';
import '../app.theme_utils.dart';

class AppFilledButtonThemeData extends FilledButtonThemeData {
  AppFilledButtonThemeData.from(
    final ColorScheme colorScheme,
  ) : super(
          style: ButtonStyle(
            padding: const WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: AppSizes.points_12,
                horizontal: AppSizes.points_16,
              ),
            ),
            shape: const WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppConstants.borderRadius),),
              ),
            ),
            backgroundColor:
                AppThemeUtils.resolveColorWith(colorScheme.primary),
            textStyle: AppThemeUtils.resolveTextStyleWith(
              textStyle: AppFonts.textTheme.labelLarge,
              color: colorScheme.onPrimary,
            ),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onPrimary),
            splashFactory: InkRipple.splashFactory,
          ),
        );

  static ButtonStyle? primaryContainerStyle(final ColorScheme colorScheme) =>
      AppFilledButtonThemeData.from(colorScheme).style?.copyWith(
            backgroundColor:
                AppThemeUtils.resolveColorWith(colorScheme.primaryContainer),
            iconColor:
                AppThemeUtils.resolveColorWith(colorScheme.onPrimaryContainer),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.onPrimaryContainer,),
          );

  static ButtonStyle? errorStyle(final ColorScheme colorScheme) =>
      AppFilledButtonThemeData.from(colorScheme).style?.copyWith(
            backgroundColor: AppThemeUtils.resolveColorWith(colorScheme.error),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onError),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.onError,),
          );

  static ButtonStyle? tertiaryStyle(final ColorScheme colorScheme) =>
      AppFilledButtonThemeData.from(colorScheme).style?.copyWith(
            backgroundColor:
                AppThemeUtils.resolveColorWith(colorScheme.tertiary),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onTertiary),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.onTertiary,),
          );
}