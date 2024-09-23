import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/components/app.loading.dart';
import '../../common/components/app.text.dart';
import '../../common/components/retry_widget.dart';
import '../../common/routes/app.route_name.dart';
import '../../common/routes/app.route_parameters.dart';
import '../../common/theme/app.elevations.dart';
import '../../common/utils/app.sizes.dart';
import '../../common/utils/app.utils.responsive.dart';
import 'bloc/bloc.products.dart';
import 'widgets/product_card.dart';
import 'widgets/shuffle.fav.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation.index == 0;
    final carouselController = CarouselController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      floatingActionButton:
          ShuffleFav(parentCarouselController: carouselController),
      body: AppResponsiveUtils.responsiveContent(
        context: context,
        isScrollable: false,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.points_12,
            vertical: AppSizes.points_32,
          ),
          child: BlocBuilder<ProductsBloc, ProductsState>(
            builder: (final context, final state) => state.when(
              initial: (final products) {
                BlocProvider.of<ProductsBloc>(context)
                    .add(const ProductsEvent.retrieve());
                return const SizedBox.shrink();
              },
              loading: (final products) => Center(
                  child: AppLoading(
                content: AppText.bodyLarge('Loading Products ...'),
              )),
              failure: (final products, final errorMessage) => RetryWidget(
                onRetry: () => BlocProvider.of<ProductsBloc>(context)
                    .add(const ProductsEvent.retrieve()),
                message: errorMessage ?? 'Unknown Error Occurred',
              ),
              loaded: (final products) => CarouselView(
                itemExtent: 490,
                shrinkExtent: 360,
                onTap: (final index) {
                  context.goNamed(
                    AppRouteNames.productDetails,
                    pathParameters: {
                      AppRouteParameters.productId: state.products[index].id,
                    },
                  );
                  BlocProvider.of<ProductsBloc>(context).add(
                    ProductsEvent.productVisited(state.products[index]),
                  );
                  carouselController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 680),
                    curve: Easing.legacy,
                  );
                },
                itemSnapping: true,
                elevation: AppElevations.level_3,
                scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
                controller: carouselController,
                children: [
                  ...state.products.map(
                    (final product) => ProductCard(product: product),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}