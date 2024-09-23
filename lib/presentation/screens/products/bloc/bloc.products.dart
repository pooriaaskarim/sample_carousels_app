import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/product/product.model.dart';
import '../../../../infrastructure/repositories/products.repository.dart';

part 'bloc.products.freezed.dart';
part 'event.products.dart';
part 'state.products.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({required final ProductsRepository repository})
      : _repository = repository,
        super(const ProductsState.initial()) {
    on<_Retrieve>((final event, final emit) async {
      emit(const ProductsState.loading());
      try {
        final products = await _repository.getProducts();
        emit(ProductsState.loaded(products: products));
      } on Exception catch (e) {
        emit(
          ProductsState.failure(
            errorMessage: e is DioException ? '${e.message}' : null,
          ),
        );
      }
    });

    on<_Shuffle>((final event, final emit) {
      state.products.shuffle();
      emit(state.copyWith(products: state.products));
    });
    on<_ProductVisited>((final event, final emit) {
      state.products.insert(
        0,
        state.products.removeAt(state.products.indexOf(event.product)),
      );
      emit(ProductsState.loaded(products: state.products));
    });
  }

  final ProductsRepository _repository;
}