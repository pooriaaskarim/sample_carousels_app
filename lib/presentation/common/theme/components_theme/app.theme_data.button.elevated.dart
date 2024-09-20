import 'package:flutter/material.dart';

import '../../utils/app.constants.dart';
import '../../utils/app.sizes.dart';
import '../app.fonts.dart';
import '../app.opacities.dart';
import '../app.theme_utils.dart';

class AppElevatedButtonThemeData extends ElevatedButtonThemeData {
  AppElevatedButtonThemeData.from(
    final ColorScheme colorScheme,
  ) : super(
          style: ButtonStyle(
            padding: const WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: AppSizes.points_12,
                horizontal: AppSizes.points_16,
              ),
            ),
            backgroundColor:
                AppThemeUtils.resolveColorWith(colorScheme.primary),
            shape: const WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppConstants.largeBorderRadius),),
              ),
            ),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge?.merge(
                  const TextStyle(
                    fontWeight: AppFonts.bold,
                  ),
                ),
                color: colorScheme.onPrimary,),
            iconColor: AppThemeUtils.resolveColorWith(colorScheme.onPrimary),
            splashFactory: InkRipple.splashFactory,
          ),
        );

  static ButtonStyle? tertiaryStyle(final ColorScheme colorScheme) =>
      AppElevatedButtonThemeData.from(colorScheme).style?.copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.tertiary
                  .withOpacity(AppOpacities.disabledStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.hovered,
              }.contains,
            )) {
              return colorScheme.tertiary
                  .withOpacity(AppOpacities.hoverStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.focused,
              }.contains,
            )) {
              return colorScheme.tertiary
                  .withOpacity(AppOpacities.focusStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.pressed,
              }.contains,
            )) {
              return colorScheme.tertiary
                  .withOpacity(AppOpacities.pressStateLayerOpacity);
            }
            //default: enabled state
            return colorScheme.tertiary;
          },
        ),
        iconColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.onTertiary.withOpacity(38 / 100);
            }
            //Any State other than disabled
            return colorScheme.onTertiary;
          },
        ),
        textStyle: WidgetStateProperty.resolveWith(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return AppFonts.textTheme.labelLarge?.merge(
                TextStyle(
                  color: colorScheme.onTertiaryContainer,
                  fontWeight: AppFonts.bold,
                ),
              );
            } else {
              return AppFonts.textTheme.labelLarge?.merge(
                TextStyle(
                  color: colorScheme.onTertiary,
                  fontWeight: AppFonts.bold,
                ),
              );
            }
          },
        ),
      );

  static ButtonStyle? errorStyle(final ColorScheme colorScheme) =>
      AppElevatedButtonThemeData.from(colorScheme).style?.copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.error
                  .withOpacity(AppOpacities.disabledStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.hovered,
              }.contains,
            )) {
              return colorScheme.error
                  .withOpacity(AppOpacities.hoverStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.focused,
              }.contains,
            )) {
              return colorScheme.error
                  .withOpacity(AppOpacities.focusStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.pressed,
              }.contains,
            )) {
              return colorScheme.error
                  .withOpacity(AppOpacities.pressStateLayerOpacity);
            }
            //default: enabled state
            return colorScheme.error;
          },
        ),
        iconColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.onError.withOpacity(38 / 100);
            }
            //Any State other than disabled
            return colorScheme.onError;
          },
        ),
        textStyle: WidgetStateProperty.resolveWith(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return AppFonts.textTheme.labelLarge?.merge(
                TextStyle(
                  color: colorScheme.onError,
                  fontWeight: AppFonts.bold,
                ),
              );
            } else {
              return AppFonts.textTheme.labelLarge?.merge(
                TextStyle(
                  color: colorScheme.onError,
                  fontWeight: AppFonts.bold,
                ),
              );
            }
          },
        ),
      );

  static ButtonStyle? primaryContainerStyle(final ColorScheme colorScheme) =>
      AppElevatedButtonThemeData.from(colorScheme).style?.copyWith(
            backgroundColor: WidgetStateProperty.resolveWith<Color?>(
              (final states) {
                if (states.any(
                  {
                    WidgetState.disabled,
                  }.contains,
                )) {
                  return colorScheme.primaryContainer
                      .withOpacity(AppOpacities.disabledStateLayerOpacity);
                }
                if (states.any(
                  {
                    WidgetState.hovered,
                  }.contains,
                )) {
                  return colorScheme.primaryContainer
                      .withOpacity(AppOpacities.hoverStateLayerOpacity);
                }
                if (states.any(
                  {
                    WidgetState.focused,
                  }.contains,
                )) {
                  return colorScheme.primaryContainer
                      .withOpacity(AppOpacities.focusStateLayerOpacity);
                }
                if (states.any(
                  {
                    WidgetState.pressed,
                  }.contains,
                )) {
                  return colorScheme.primaryContainer
                      .withOpacity(AppOpacities.pressStateLayerOpacity);
                }
                //default: enabled state
                return colorScheme.primaryContainer;
              },
            ),
            iconColor: WidgetStateProperty.resolveWith<Color?>(
              (final states) {
                if (states.any(
                  {
                    WidgetState.disabled,
                  }.contains,
                )) {
                  return colorScheme.onPrimaryContainer.withOpacity(38 / 100);
                }
                //Any State other than disabled
                return colorScheme.onPrimaryContainer;
              },
            ),
            textStyle: WidgetStatePropertyAll(
              AppFonts.textTheme.labelLarge?.merge(
                TextStyle(
                  color: colorScheme.onPrimaryContainer,
                  fontWeight: AppFonts.bold,
                ),
              ),
            ),
          );
}