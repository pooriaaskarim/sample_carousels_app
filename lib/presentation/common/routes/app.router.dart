import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screens/not_found/screen.not_found.dart';
import '../../screens/product_details/screen.product_details.dart';
import '../../screens/products/screen.products.dart';
import '../../screens/splash/screen.splash.dart';
import 'app.route_name.dart';
import 'app.route_parameters.dart';
import 'app.route_path.dart';

class AppRouter {
  AppRouter._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRoutePaths.splash,
    onException: (final context, final state, final router) {
      router.goNamed(AppRouteNames.notFound);
    },
    routes: [
      GoRoute(
        path: AppRoutePaths.splash,
        name: AppRouteNames.splash,
        builder: (final context, final state) {
          if (state.fullPath == AppRoutePaths.splash) {
            Future.delayed(const Duration(milliseconds: 680))
                .then((final _) async {
              context.goNamed(AppRouteNames.products);
            });
          }

          return const SplashScreen();
        },
      ),
      GoRoute(
        path: AppRoutePaths.products,
        name: AppRouteNames.products,
        builder: (final context, final state) => const ProductsScreen(),
        routes: [
          GoRoute(
            path: AppRoutePaths.productDetails,
            name: AppRouteNames.productDetails,
            builder: (final context, final state) => ProductDetailsScreen(
              productId:
                  state.pathParameters[AppRouteParameters.productId] ?? '-1',
            ),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutePaths.notFound,
        name: AppRouteNames.notFound,
        builder: (final context, final state) => const NotFoundScreen(),
      ),
    ],
  );
}