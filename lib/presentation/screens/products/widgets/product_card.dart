import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/product/product.model.dart';
import '../../../common/components/app.text.dart';
import '../../../common/routes/app.route_name.dart';
import '../../../common/routes/app.route_parameters.dart';
import '../../../common/theme/app.elevations.dart';
import '../../../common/utils/app.constants.dart';
import '../../../common/utils/app.sizes.dart';
import '../../../common/utils/app.utils.dart';
import '../../common/product/product.widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(final BuildContext context) {
    final themeData = Theme.of(context);

    final borderRadius = BorderRadius.circular(AppConstants.largeBorderRadius);
    return Padding(
      padding: const EdgeInsets.all(AppSizes.points_4),
      child: Material(
        clipBehavior: Clip.hardEdge,
        type: MaterialType.card,
        color: themeData.cardColor,
        borderRadius: borderRadius,
        elevation: AppElevations.level_4,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: () {
            context.goNamed(
              AppRouteNames.productDetails,
              pathParameters: {AppRouteParameters.productId: product.id},
              // queryParameters: {AppRouteParameters.productId: product.id},
            );
          },
          child: Stack(
            children: [
              ProductImage(
                product: product,
                imageBuilder: (final context, final imageProvider) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(
                      // strokeAlign: BorderSide.strokeAlignCenter,
                      color: themeData.colorScheme.onSurface,
                      width: .3,
                    ),
                    borderRadius: borderRadius,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0, .4, 1],
                      colors: [
                        themeData.colorScheme.surface,
                        Colors.transparent,
                        themeData.colorScheme.surface,
                      ],
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
              Padding(
                padding: const EdgeInsets.only(
                  right: AppSizes.points_16,
                  left: AppSizes.points_16,
                  top: AppSizes.points_24,
                  bottom: AppSizes.points_8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ProductTitle(
                      product: product,
                      // hideBadge: true,
                    ),
                    AppUtils.verticalSpacer(AppSizes.points_12),
                    Row(
                      children: [
                        AppUtils.horizontalSpacer(AppSizes.points_16),
                        const Icon(
                          Icons.location_on_rounded,
                        ),
                        AppUtils.horizontalSpacer(AppSizes.points_4),
                        AppText.bodyMedium(
                          product.city,
                          mergeWith:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(child: AppUtils.verticalSpacer()),
                    ProductStats(
                      product: product,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}