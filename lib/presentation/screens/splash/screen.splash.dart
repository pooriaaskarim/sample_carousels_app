import 'package:flutter/material.dart';

import '../../common/components/app.loading.dart';
import '../../common/components/app.text.dart';
import '../../common/utils/app.utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLoading(
              content: AppText.bodyLarge('initializing...'),
            ),
            AppUtils.verticalSpacer(),
          ],
        ),
      );
}