import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/product/product.model.dart';
import '../../../../infrastructure/cache_service/cache_keys.dart';
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

        products.shuffle();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final lastVisitedProductId =
            prefs.getString(CacheKeys.lastVisitedProduct);

        if (lastVisitedProductId != null) {
          final lastVisitedProduct = products
              .where(
                (final element) => element.id == lastVisitedProductId,
              )
              .first;
          products.remove(lastVisitedProduct);
          products.insert(0, lastVisitedProduct);
        }

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

    on<_ProductVisited>((final event, final emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      state.products.insert(
        0,
        state.products.removeAt(state.products.indexOf(event.product)),
      );
      await prefs.setString(CacheKeys.lastVisitedProduct, event.product.id);
      emit(ProductsState.loaded(products: state.products));
    });
  }

  final ProductsRepository _repository;
}