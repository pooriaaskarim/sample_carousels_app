import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/components/app.text.dart';
import '../../common/theme/app.fonts.dart';
import '../../common/utils/app.sizes.dart';
import '../../common/utils/app.utils.responsive.dart';
import '../products/bloc/bloc.products.dart';
import 'widgets/product_detail.app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({required this.productId, super.key});

  final String productId;

  @override
  Widget build(final BuildContext context) {
    final product = BlocProvider.of<ProductsBloc>(context)
        .state
        .products
        .where(
          (final element) => element.id == productId,
        )
        .firstOrNull;
    if (product == null) {
      return Scaffold(
        appBar: AppBar(
          title: AppText('Product Details'),
        ),
        body: AppResponsiveUtils.responsiveContent(
          child: Center(
            child: AppText.bodyLarge('Nothing to show in particular!'),
          ),
          context: context,
        ),
      );
    }
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (final context, final innerBoxIsScrolled) => [
          ProductDetailsAppBar(product: product),
        ],
        body: AppResponsiveUtils.responsiveContent(
          context: context,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.points_24,
              vertical: AppSizes.points_24,
            ),
            child: Column(
              children: [
                AppText.rich(
                  style: AppFonts.textTheme.bodyLarge,
                  TextSpan(
                    children: [
                      const TextSpan(text: 'Location:'),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: '\t ${product.city}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: '\n\n'),
                      const TextSpan(text: 'Presenter:'),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: '\t ${product.presenter}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: '\n\n'),
                      const TextSpan(text: 'Type:'),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: '\t ${product.type}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: '\n\n'),
                      const TextSpan(text: 'Location:'),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: '\t ${product.city}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: '\n\n'),
                      const TextSpan(text: 'Visit Url:'),
                      const TextSpan(text: '\n\t\t'),
                      TextSpan(
                        text: product.url,
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}