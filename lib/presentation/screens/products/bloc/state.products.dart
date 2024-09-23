part of 'bloc.products.dart';

@unfreezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial({
    @Default([]) final List<Product> products,
  }) = _Initial;

  const factory ProductsState.loading({
    @Default([]) final List<Product> products,
  }) = _Loading;

  const factory ProductsState.loaded({required final List<Product> products}) =
      _Loaded;

  const factory ProductsState.failure({
    @Default([]) final List<Product> products,
    final String? errorMessage,
  }) = _failure;
}