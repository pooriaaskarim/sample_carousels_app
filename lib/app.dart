import 'dart:ui';

import 'package:flutter/material.dart';

import 'presentation/common/theme/app.theme.dart';
import 'presentation/screens/products/screen.products.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => SafeArea(
        maintainBottomViewPadding: true,
        child: MaterialApp(
          title: 'Sample Carousels App',
          home: const ProductsScreen(),
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
        // child: MaterialApp.router(
        //   routerConfig: AppRouter.router,
        //   title: 'Sample Carousels App',
        //   theme: AppThemes.lightTheme,
        //   darkTheme: AppThemes.darkTheme,
        //   scrollBehavior: const MaterialScrollBehavior().copyWith(
        //     scrollbars: false,
        //     dragDevices: {
        //       PointerDeviceKind.mouse,
        //       PointerDeviceKind.touch,
        //     },
        //   ),
        //   debugShowCheckedModeBanner: false,
        // ),
      );
}