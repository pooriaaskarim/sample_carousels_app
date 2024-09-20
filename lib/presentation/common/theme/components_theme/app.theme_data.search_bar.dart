import 'package:flutter/material.dart';

import '../../utils/app.sizes.dart';
import '../app.elevations.dart';

class AppSearchBarThemeData extends SearchBarThemeData {
  AppSearchBarThemeData.from(
    final ColorScheme colorScheme,
  ) : super(
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: AppSizes.points_8, vertical: 0),
          ),
          constraints: const BoxConstraints(maxHeight: AppSizes.points_48),
          elevation: const WidgetStatePropertyAll(AppElevations.level_0),
          backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              side: BorderSide(
                color: colorScheme.outline.withOpacity(0.4),
              ),
            ),
          ),
        );
}