import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/app.sizes.dart';
import '../app.elevations.dart';
import '../app.fonts.dart';

class AppAppbarThemeData extends AppBarTheme {
  AppAppbarThemeData.from(final ColorScheme colorScheme)
      : super(
          actionsIconTheme: IconThemeData(
            size: AppSizes.points_24,
            color: colorScheme.onSurface,
          ),
          color: colorScheme.surface,
          elevation: AppElevations.level_0,
          shape: LinearBorder(
              side: BorderSide(color: colorScheme.onSurface.withOpacity(0.2)),
              bottom: const LinearBorderEdge(),),
          scrolledUnderElevation: AppElevations.level_2,
          foregroundColor: colorScheme.onSurface,
          iconTheme: IconThemeData(
            color: colorScheme.onSurface,
            size: AppSizes.points_24,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: colorScheme.brightness,
            statusBarIconBrightness:
                (colorScheme.brightness == Brightness.light)
                    ? Brightness.dark
                    : Brightness.light,
          ),
          surfaceTintColor: colorScheme.surfaceTint,
          toolbarHeight: kToolbarHeight,
          centerTitle: true,
          toolbarTextStyle: AppFonts.textTheme.titleLarge?.merge(
            TextStyle(
              color: colorScheme.onSurface,
            ),
          ),
          titleTextStyle: AppFonts.textTheme.titleLarge?.merge(
            TextStyle(
              color: colorScheme.onSurface,
            ),
          ),
        );
}
