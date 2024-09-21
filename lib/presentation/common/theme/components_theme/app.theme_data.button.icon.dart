import 'package:flutter/material.dart';

import '../../utils/app.constants.dart';
import '../../utils/app.sizes.dart';
import '../app.elevations.dart';
import '../app.fonts.dart';
import '../app.opacities.dart';

class AppIconButtonThemeData extends IconButtonThemeData {
  AppIconButtonThemeData.from(
    final ColorScheme colorScheme,
  ) : super(
          style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            elevation: WidgetStateProperty.resolveWith<double?>(
              (final states) {
                if (states.any(
                  {
                    WidgetState.disabled,
                  }.contains,
                )) {
                  return AppElevations.level_0;
                }
                if (states.any(
                  {
                    WidgetState.hovered,
                  }.contains,
                )) {
                  return AppElevations.level_2;
                }
                //focused, pressed and enabled states
                return AppElevations.level_1;
              },
            ),
            shape: const WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppConstants.borderRadius),),
              ),
            ),
            textStyle: WidgetStatePropertyAll(
              AppFonts.textTheme.labelLarge?.merge(
                TextStyle(
                  color: colorScheme.onSurface,
                  fontWeight: AppFonts.bold,
                ),
              ),
            ),
            iconColor: WidgetStateProperty.resolveWith<Color?>(
              (final states) {
                if (states.any(
                  {
                    WidgetState.disabled,
                  }.contains,
                )) {
                  return colorScheme.onSurface.withOpacity(38 / 100);
                }
                //Any State other than disabled
                return colorScheme.onSurface;
              },
            ),
            padding:
                const WidgetStatePropertyAll(EdgeInsets.all(AppSizes.points_4)),
            alignment: Alignment.center,
            minimumSize: const WidgetStatePropertyAll(
              Size(AppSizes.points_40, AppSizes.points_40),
            ),
            maximumSize: const WidgetStatePropertyAll(
              Size(AppSizes.points_40, AppSizes.points_40),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.standard,
          ),
        );

  static ButtonStyle? secondaryVariantStyle(final ColorScheme colorScheme) =>
      AppIconButtonThemeData.from(colorScheme).style?.copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.secondary;
            }
            if (states.any(
              {
                WidgetState.hovered,
              }.contains,
            )) {
              return colorScheme.secondary
                  .withOpacity(AppOpacities.hoverStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.focused,
              }.contains,
            )) {
              return colorScheme.secondary
                  .withOpacity(AppOpacities.focusStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.pressed,
              }.contains,
            )) {
              return colorScheme.secondary
                  .withOpacity(AppOpacities.pressStateLayerOpacity);
            }
            //default: enabled state
            return colorScheme.secondary;
          },
        ),
        // elevation: const WidgetStatePropertyAll(0),
        iconColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.onSecondary.withOpacity(38 / 100);
            }
            //Any State other than disabled
            return colorScheme.onSecondary;
          },
        ),
      );

  static ButtonStyle? tertiaryContainerStyle(final ColorScheme colorScheme) =>
      AppIconButtonThemeData.from(colorScheme).style?.copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.outlineVariant
                  .withOpacity(AppOpacities.disabledStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.hovered,
              }.contains,
            )) {
              return colorScheme.tertiaryContainer
                  .withOpacity(AppOpacities.hoverStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.focused,
              }.contains,
            )) {
              return colorScheme.tertiaryContainer
                  .withOpacity(AppOpacities.focusStateLayerOpacity);
            }
            if (states.any(
              {
                WidgetState.pressed,
              }.contains,
            )) {
              return colorScheme.tertiaryContainer
                  .withOpacity(AppOpacities.pressStateLayerOpacity);
            }
            //default: enabled state
            return colorScheme.tertiaryContainer;
          },
        ),
        // elevation: const WidgetStatePropertyAll(0),
        iconColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.onSurface.withOpacity(38 / 100);
            }
            //Any State other than disabled
            return colorScheme.onSurface;
          },
        ),
      );

  static ButtonStyle? errorStyle(final ColorScheme colorScheme) =>
      AppIconButtonThemeData.from(colorScheme).style?.copyWith(
        iconColor: WidgetStateProperty.resolveWith<Color?>(
          (final states) {
            if (states.any(
              {
                WidgetState.disabled,
              }.contains,
            )) {
              return colorScheme.error.withOpacity(38 / 100);
            }
            //Any State other than disabled
            return colorScheme.error;
          },
        ),
      );
}