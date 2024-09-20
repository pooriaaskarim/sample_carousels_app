import 'package:flutter/material.dart';

import '../utils/app.constants.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    required this.iconName,
    this.recolor = true,
    this.size = 18,
    this.color,
    this.boxFit,
    super.key,
  });

  final String iconName;
  final Color? color;
  final double size;
  final bool recolor;
  final BoxFit? boxFit;

  @override
  Widget build(final BuildContext context) => SizedBox(
        width: size,
        height: size,
        child: Image.asset(
          '${AppConstants.iconAssetsPath}$iconName',
          color: color,
          fit: boxFit ?? BoxFit.contain,
        ),
      );
}