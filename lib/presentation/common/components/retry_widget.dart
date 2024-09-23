import 'package:flutter/material.dart';

import '../theme/components_theme/app.theme_data.button.filled.dart';
import '../utils/app.sizes.dart';
import '../utils/app.utils.dart';
import 'app.text.dart';

class RetryWidget extends StatelessWidget {
  const RetryWidget({
    required this.onRetry,
    this.message,
    this.padding,
    super.key,
  });

  final void Function() onRetry;
  final String? message;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(final BuildContext context) => Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: AppSizes.points_32 * 2.5,
            ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText.bodyMedium(
                message ?? 'Something went wrong',
                textAlign: TextAlign.center,
              ),
              AppUtils.verticalSpacer(),
              FilledButton(
                style: AppFilledButtonThemeData.errorStyle(
                  Theme.of(context).colorScheme,
                ),
                onPressed: onRetry,
                child: AppText('Retry'),
              ),
            ],
          ),
        ),
      );
}