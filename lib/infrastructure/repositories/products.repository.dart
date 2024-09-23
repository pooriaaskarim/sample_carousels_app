import '../../domain/product/product.model.dart';
import '../api_service/api_end_points.dart';
import '../api_service/app.http_client.dart';

class ProductsRepository {
  ProductsRepository({final AppHttpClient? client})
      : _client = client ?? AppHttpClient();

  final AppHttpClient _client;

  Future<List<Product>> getProducts() async {
    try {
      final response = await _client.get(ApiEndPoints.products);

      return [for (final json in response.data) Product.fromJson(json)];
    } on Exception {
      rethrow;
    }
  }
}