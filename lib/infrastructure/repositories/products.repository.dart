import '../../domain/product/product.model.dart';
import '../api_service/api_end_points.dart';
import '../api_service/app.http_client.dart';

class ProductsRepository {
  final _client = AppHttpClient();

  Future<List<Product>> getProducts() async {
    try {
      final response = await _client.get(ApiEndPoints.products);
      // final products = [];
      // for (final json in response.data) {
      //   products.add(Product.fromJson(json));
      // }
      return [for (final json in response.data) Product.fromJson(json)];
    } on Exception {
      rethrow;
    }
  }
}