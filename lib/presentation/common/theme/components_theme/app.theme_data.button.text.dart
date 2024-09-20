import 'package:flutter/material.dart';

import '../../utils/app.constants.dart';
import '../../utils/app.sizes.dart';
import '../app.elevations.dart';
import '../app.fonts.dart';
import '../app.theme_utils.dart';

class AppTextButtonThemeData extends TextButtonThemeData {
  AppTextButtonThemeData(final ColorScheme colorScheme)
      : super(
          style: ButtonStyle(
            padding: const WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: AppSizes.points_12,
                horizontal: AppSizes.points_16,
              ),
            ),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.bodyLarge,
                color: colorScheme.onSurface,),
            shape: const WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppConstants.borderRadius),),
              ),
            ),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onSurface),
            splashFactory: InkRipple.splashFactory,
          ),
        );

  static ButtonStyle primaryStyle(final ColorScheme colorScheme) =>
      AppTextButtonThemeData(colorScheme).style!.copyWith(
            backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.primary),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.bodyLarge,
                color: colorScheme.primary,),
          );

  static ButtonStyle? onSurfaceStyle(final ColorScheme colorScheme) =>
      AppTextButtonThemeData(colorScheme).style?.copyWith(
            backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onSurface),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.bodyLarge,
                color: colorScheme.onSurface,),
          );

  static ButtonStyle? errorStyle(final ColorScheme colorScheme) =>
      AppTextButtonThemeData(colorScheme).style?.copyWith(
            backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.error),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.error,),
          );

  static ButtonStyle? elevatedStyle(final ColorScheme colorScheme) =>
      AppTextButtonThemeData(colorScheme).style?.copyWith(
            backgroundColor: WidgetStatePropertyAll(colorScheme.surface),
            elevation: WidgetStateProperty.resolveWith<double?>(
              (final states) {
                if (states.any(
                  {
                    WidgetState.disabled,
                  }.contains,
                )) {
                  return AppElevations.level_1;
                }
                if (states.any(
                  {
                    WidgetState.focused,
                    WidgetState.hovered,
                  }.contains,
                )) {
                  return AppElevations.level_4;
                }
                return AppElevations.level_3;
              },
            ),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onSurface),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.onSurface,),
            shadowColor: AppThemeUtils.resolveColorWith(
              colorScheme.shadow,
            ),
          );
}