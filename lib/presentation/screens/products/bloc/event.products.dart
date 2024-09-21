part of 'bloc.products.dart';

@unfreezed
abstract class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.update(final List<Product> products) = _Update;

  const factory ProductsEvent.shuffle() = _Shuffle;

  const factory ProductsEvent.productVisited(final Product product) =
      _ProductVisited;
}