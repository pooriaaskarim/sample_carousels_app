import 'package:flutter/material.dart';

import '../../utils/app.constants.dart';
import '../app.fonts.dart';
import '../app.opacities.dart';
import '../app.theme_utils.dart';

class AppOutlinedButtonThemeData extends OutlinedButtonThemeData {
  AppOutlinedButtonThemeData.from(
    final ColorScheme colorScheme,
  ) : super(
          style: ButtonStyle(
            side: WidgetStateProperty.resolveWith((final states) {
              if (states.any({WidgetState.disabled}.contains)) {
                return BorderSide(
                    color: colorScheme.primary
                        .withOpacity(AppOpacities.disabledStateLayerOpacity),);
              }
              return BorderSide(color: colorScheme.primary);
            }),
            shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.borderRadius),
            ),),
            textStyle: AppThemeUtils.resolveTextStyleWith(
              textStyle: AppFonts.textTheme.labelLarge,
              color: colorScheme.primary,
            ),
          ),
        );

  static ButtonStyle? tertiaryStyle(final ColorScheme colorScheme) =>
      AppOutlinedButtonThemeData.from(colorScheme).style?.copyWith(
            side: WidgetStateProperty.resolveWith((final states) {
              if (states.any({WidgetState.disabled}.contains)) {
                return BorderSide(
                    color: colorScheme.tertiary
                        .withOpacity(AppOpacities.disabledStateLayerOpacity),);
              }
              return BorderSide(color: colorScheme.tertiary);
            }),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.tertiary,),
          );

  static ButtonStyle? errorStyle(final ColorScheme colorScheme) =>
      AppOutlinedButtonThemeData.from(colorScheme).style?.copyWith(
            side: WidgetStateProperty.resolveWith((final states) {
              if (states.any({WidgetState.disabled}.contains)) {
                return BorderSide(
                    color: colorScheme.error
                        .withOpacity(AppOpacities.disabledStateLayerOpacity),);
              }
              return BorderSide(color: colorScheme.error);
            }),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.error,),
          );

  static ButtonStyle? primaryContainerStyle(final ColorScheme colorScheme) =>
      AppOutlinedButtonThemeData.from(colorScheme).style?.copyWith(
            side: WidgetStateProperty.resolveWith((final states) {
              if (states.any({WidgetState.disabled}.contains)) {
                return BorderSide(
                    color: colorScheme.primaryContainer
                        .withOpacity(AppOpacities.disabledStateLayerOpacity),);
              }
              return BorderSide(color: colorScheme.primaryContainer);
            }),
            textStyle: AppThemeUtils.resolveTextStyleWith(
                textStyle: AppFonts.textTheme.labelLarge,
                color: colorScheme.primaryContainer,),
          );
}