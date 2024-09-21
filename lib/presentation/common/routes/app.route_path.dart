import 'app.route_parameters.dart';

class AppRoutePaths {
  AppRoutePaths._();

  static const String splash = '/';
  static const String notFound = '/notFound';

  static const String products = '/products';

  static const String productDetails =
      'details/:${AppRouteParameters.productId}';
}