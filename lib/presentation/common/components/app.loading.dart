import 'package:flutter/material.dart';

import '../utils/app.sizes.dart';
import '../utils/app.utils.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    this.content,
    this.alignment = Alignment.center,
    this.loadingColor,
    this.size,
    this.stretch = false,
    this.progress,
    super.key,
  });

  final AlignmentGeometry alignment;
  final Color? loadingColor;
  final Widget? content;
  final bool stretch;
  final double? size;
  final double? progress;

  @override
  Widget build(final BuildContext context) {
    final themeData = Theme.of(context);

    return Column(
      mainAxisSize: stretch ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          stretch ? CrossAxisAlignment.stretch : CrossAxisAlignment.center,
      children: [
        Align(
          alignment: alignment,
          child: SizedBox.fromSize(
            size: size == null ? null : Size.fromRadius(size!),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              value: progress,
              color: loadingColor ?? themeData.colorScheme.onSurface,
            ),
          ),
        ),
        if (content != null) ...[
          AppUtils.verticalSpacer(AppSizes.points_8),
          Align(alignment: alignment, child: content),
        ],
      ],
    );
  }
}