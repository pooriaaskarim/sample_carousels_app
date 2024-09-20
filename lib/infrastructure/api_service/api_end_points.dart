class ApiEndPoints {
  ApiEndPoints._();

  static const String _baseUrl = 'https://66e20997c831c8811b57050e.mockapi.io';
  static const String _apiVersion = '/api/v1';
  static const String _apiBase = '$_baseUrl$_apiVersion';

  // Apis.Products
  static String get products => '$_apiBase/home/items';
}