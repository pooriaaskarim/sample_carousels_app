import 'package:flutter/material.dart';

class AppDrawerThemeData extends DrawerThemeData {
  const AppDrawerThemeData(final ColorScheme lightColorScheme)
      : super(
          endShape: const ContinuousRectangleBorder(
            borderRadius: BorderRadiusDirectional.zero,
            side: BorderSide(color: Colors.transparent),
          ),
        );
}