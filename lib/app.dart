import 'dart:ui';

import 'package:flutter/material.dart';

import 'presentation/common/routes/app.router.dart';
import 'presentation/common/theme/app.theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => SafeArea(
        maintainBottomViewPadding: true,
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'Sample Carousels App',
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            scrollbars: false,
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
            },
          ),
          debugShowCheckedModeBanner: false,
        ),
      );
}