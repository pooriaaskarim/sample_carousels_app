import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/product/product.model.dart';

part 'bloc.products.freezed.dart';
part 'event.products.dart';
part 'state.products.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const ProductsState.state(products: [])) {
    on<_Update>((final event, final emit) {
      emit(ProductsState.state(products: event.products));
    });
    on<_Shuffle>((final event, final emit) {
      state.products.shuffle();
      add(_Update(state.products));
    });
    on<_ProductVisited>((final event, final emit) {
      state.products.insert(
        0,
        state.products.removeAt(state.products.indexOf(event.product)),
      );
      emit(ProductsState.state(products: state.products));
    });
  }
}