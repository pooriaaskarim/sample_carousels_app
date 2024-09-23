import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/components/app.text.dart';
import '../../common/routes/app.route_name.dart';
import '../../common/utils/app.utils.dart';
import '../../common/utils/app.utils.responsive.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: AppResponsiveUtils.responsiveContent(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.displayLarge(
                '404',
                textScaler: const TextScaler.linear(2),
                mergeWith:
                    const TextStyle(decoration: TextDecoration.underline),
              ),
              AppText.bodyLarge('Nothing to show!'),
              AppUtils.verticalSpacer(),
              TextButton(
                onPressed: () {
                  context.goNamed(AppRouteNames.splash);
                },
                child: AppText('Get Back'),
              ),
            ],
          ),
          context: context,
        ),
      );
}