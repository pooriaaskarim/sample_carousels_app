import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../../../domain/product/product.model.dart';
import '../../../common/utils/app.sizes.dart';
import '../../../components/product/product.widgets.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(final BuildContext context) {
    final themeData = Theme.of(context);

    return SliverAppBar.large(
      flexibleSpace: LayoutBuilder(
        builder: (final context, final constraints) {
          final top = constraints.maxHeight;

          return FlexibleSpaceBar(
            titlePadding: const EdgeInsets.only(
              bottom: AppSizes.points_64 + AppSizes.points_16,
              left: AppSizes.points_12,
              right: AppSizes.points_12,
            ),
            centerTitle: true,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: top > 180 ? 1.0 : 0.0,
              child: ProductTitle(
                product: product,
              ),
            ),
            background: InkWell(
              onTap: () {
                _showPhoto(context, themeData);
              },
              child: ProductImage(
                product: product,
                imageBuilder: (final context, final imageProvider) => Container(
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        themeData.colorScheme.surface,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      title: ProductTitle(
        product: product,
        hideBadge: true,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(AppSizes.points_64),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.points_4),
          child: ProductStats(product: product),
        ),
      ),
      expandedHeight: 360,
    );
  }

  Future<dynamic> _showPhoto(
    final BuildContext context,
    final ThemeData themeData,
  ) async =>
      showDialog(
        context: context,
        builder: (final context) => Dialog(
          child: ProductImage(
            product: product,
            imageBuilder: (final _, final imageProvider) => PhotoView(
              backgroundDecoration: BoxDecoration(
                border: Border.all(
                  width: 0.3,
                  color: themeData.colorScheme.onSurface,
                ),
              ),
              strictScale: true,
              minScale: 0.5,
              imageProvider: imageProvider,
              tightMode: true,
            ),
          ),
        ),
      );
}