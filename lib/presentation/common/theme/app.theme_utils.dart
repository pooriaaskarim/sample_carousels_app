import 'package:flutter/material.dart';

import 'app.opacities.dart';

class AppThemeUtils {
  AppThemeUtils._();

  static WidgetStateProperty<TextStyle?> resolveTextStyleWith(
          {required final TextStyle? textStyle, required final Color color,}) =>
      WidgetStateProperty.resolveWith<TextStyle?>(
        (final states) {
          if (states.any(
            {
              WidgetState.disabled,
            }.contains,
          )) {
            return textStyle?.merge(
              TextStyle(
                color:
                    color.withOpacity(AppOpacities.disabledStateLayerOpacity),
              ),
            );
          }
          if (states.any(
            {
              WidgetState.dragged,
            }.contains,
          )) {
            return textStyle?.merge(
              TextStyle(
                color: color.withOpacity(AppOpacities.dragStateLayerOpacity),
              ),
            );
          }
          if (states.any(
            {
              WidgetState.focused,
            }.contains,
          )) {
            return textStyle?.merge(
              TextStyle(
                color: color.withOpacity(AppOpacities.focusStateLayerOpacity),
              ),
            );
          }
          if (states.any(
            {
              WidgetState.hovered,
            }.contains,
          )) {
            return textStyle?.merge(
              TextStyle(
                color: color.withOpacity(AppOpacities.hoverStateLayerOpacity),
              ),
            );
          }
          // if (states.any(
          //   {
          //     WidgetState.pressed,
          //   }.contains,
          // )) {
          //   return textStyle?.merge(
          //     TextStyle(
          //       color: color.withOpacity(AppOpacities.pressStateLayerOpacity),
          //     ),
          //   );
          // }
          return textStyle?.merge(
            TextStyle(
              color: color,
            ),
          );
        },
      );

  static WidgetStateProperty<Color> resolveColorWith(final Color color) =>
      WidgetStateProperty.resolveWith<Color>(
        (final states) {
          if (states.any(
            {
              WidgetState.disabled,
            }.contains,
          )) {
            return color.withOpacity(AppOpacities.disabledStateLayerOpacity);
          }
          if (states.any(
            {
              WidgetState.dragged,
            }.contains,
          )) {
            return color.withOpacity(AppOpacities.dragStateLayerOpacity);
          }
          if (states.any(
            {
              WidgetState.focused,
            }.contains,
          )) {
            return color.withOpacity(AppOpacities.focusStateLayerOpacity);
          }
          if (states.any(
            {
              WidgetState.hovered,
            }.contains,
          )) {
            return color.withOpacity(AppOpacities.hoverStateLayerOpacity);
          }
          if (states.any(
            {
              WidgetState.pressed,
            }.contains,
          )) {
            return color.withOpacity(AppOpacities.pressStateLayerOpacity);
          }
          return color;
        },
      );
}