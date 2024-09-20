import 'package:flutter/material.dart';

import '../../utils/app.constants.dart';
import '../../utils/app.sizes.dart';
import '../app.fonts.dart';

class AppInputDecorationData extends InputDecorationTheme {
  AppInputDecorationData.from(final ColorScheme colorScheme)
      : super(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.points_8,
            vertical: AppSizes.points_16,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintStyle: AppFonts.textTheme.bodyMedium
              ?.copyWith(color: colorScheme.outline),
          labelStyle: AppFonts.textTheme.bodyMedium
              ?.copyWith(color: colorScheme.outline.withOpacity(0.8)),
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.outline.withOpacity(0.4),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppConstants.borderRadius),
            ),
          ),
        );
}
