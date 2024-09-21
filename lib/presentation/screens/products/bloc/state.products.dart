part of 'bloc.products.dart';

@unfreezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.state({
    required final List<Product> products,
  }) = _State;
}