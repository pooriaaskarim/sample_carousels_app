import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'infrastructure/repositories/products.repository.dart';
import 'presentation/screens/products/bloc/bloc.products.dart';

void main() {
  runApp(
    BlocProvider(
      create: (final context) => ProductsBloc(repository: ProductsRepository()),
      child: const App(),
    ),
  );
}