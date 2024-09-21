import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required final String type,
    required final String title,
    required final String image,
    required final String price,
    required final String city,
    required final String presenter,
    required final String runtime,
    required final String rate,
    required final String url,
    required final String id,
  }) = _Product;

  factory Product.fromJson(final Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}