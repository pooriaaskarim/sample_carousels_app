import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_carousels_app/presentation/screens/products/widgets/product_card.dart';

import '../../../domain/product/product.model.dart';
import '../../../infrastructure/repositories/products.repository.dart';
import '../../common/components/api_status.builder.dart';
import '../../common/components/app.text.dart';
import '../../common/utils/app.sizes.dart';
import '../../common/utils/app.utils.responsive.dart';
import 'bloc/bloc.products.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<ProductsBloc>(context)
                .add(const ProductsEvent.shuffle());
          },
          child: const Icon(Icons.shuffle),
        ),
        body: AppResponsiveUtils.responsiveContent(
          context: context,
          isScrollable: false,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.points_12,
              vertical: AppSizes.points_32,
            ),
            child: ApiStatusBuilder(
              apiCall: RepositoryProvider.of<ProductsRepository>(context)
                  .getProducts,
              onSuccess: (final result) {
                BlocProvider.of<ProductsBloc>(context)
                    .add(ProductsEvent.update(result));
                return BlocBuilder<ProductsBloc, ProductsState>(
                  builder: (final context, final state) =>
                      _carouselView(context, state.products),
                );
              },
            ),
          ),
        ),
      );

  Widget _carouselView(
      final BuildContext context, final List<Product> products) {
    final mediaQuery = MediaQuery.of(context);

    final isPortrait = mediaQuery.orientation.index == 0;
    return Column(
      children: [
        Expanded(
          child: CarouselSlider.builder(
            itemCount: products.length,
            itemBuilder: (final context, final index, final realIndex) {
              if (products.isEmpty) {
                return Center(child: AppText.bodyLarge('Nothing Here!'));
              }
              final product = products[index];
              return ProductCard(product: product);
            },
            options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: isPortrait ? .75 : .5,
              enlargeFactor: .2,
              pageSnapping: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              height: mediaQuery.size.height * 0.6,
              scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}