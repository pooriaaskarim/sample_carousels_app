part of 'bloc.products.dart';

@unfreezed
abstract class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.retrieve() = _Retrieve;

  const factory ProductsEvent.shuffle() = _Shuffle;

  const factory ProductsEvent.productVisited(final Product product) =
      _ProductVisited;
}