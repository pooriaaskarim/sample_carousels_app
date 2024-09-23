import 'package:flutter/material.dart';

import '../../../../domain/product/product.model.dart';
import '../../../common/components/app.text.dart';
import '../../../common/theme/app.elevations.dart';
import '../../../common/theme/app.theme.dart';
import '../../../common/utils/app.constants.dart';
import '../../../common/utils/app.sizes.dart';
import '../../../common/utils/app.utils.dart';
import '../../../components/product/product.widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(final BuildContext context) {
    final borderRadius = BorderRadius.circular(AppConstants.largeBorderRadius);
    final backgroundColor = AppThemes.darkTheme.colorScheme.surface;

    final foregroundColor = AppThemes.darkTheme.colorScheme.onSurface;
    return Material(
      type: MaterialType.card,
      color: AppThemes.darkTheme.cardColor,
      borderRadius: borderRadius,
      elevation: AppElevations.level_4,
      child: InkWell(
        borderRadius: borderRadius,
        child: Stack(
          children: [
            ProductImage(
              product: product,
              imageBuilder: (final context, final imageProvider) => Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: borderRadius,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0, .4, 1],
                    colors: [
                      backgroundColor,
                      Colors.transparent,
                      backgroundColor,
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: AppSizes.points_32,
                left: AppSizes.points_32,
                top: AppSizes.points_24,
                bottom: AppSizes.points_4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ProductTitle(
                          product: product,
                          fontSize: 20,
                          textColor: foregroundColor,
                        ),
                      ),
                      AppUtils.horizontalSpacer(AppSizes.points_4),
                      ProductBadge(product: product),
                    ],
                  ),
                  AppUtils.verticalSpacer(AppSizes.points_4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: AppSizes.points_16,
                        color: foregroundColor,
                      ),
                      AppUtils.horizontalSpacer(AppSizes.points_4),
                      AppText.bodyMedium(
                        product.city,
                        mergeWith: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: foregroundColor,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: AppUtils.verticalSpacer()),
                  ProductStats(
                    product: product,
                    overlayColor: foregroundColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}