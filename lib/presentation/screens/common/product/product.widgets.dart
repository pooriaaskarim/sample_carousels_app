import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/product/product.model.dart';
import '../../../common/components/app.icon.dart';
import '../../../common/components/app.loading.dart';
import '../../../common/components/app.text.dart';
import '../../../common/utils/app.sizes.dart';
import '../../../common/utils/app.utils.dart';

class ProductStats extends StatelessWidget {
  const ProductStats({required this.product, super.key});

  final Product product;

  Widget _vDivider(final ThemeData themeData) => VerticalDivider(
        color: themeData.colorScheme.onSurface,
        thickness: 2,
        indent: AppSizes.points_12,
        endIndent: AppSizes.points_12,
      );

  @override
  Widget build(final BuildContext context) {
    final themeData = Theme.of(context);
    return SizedBox(
      height: AppSizes.points_64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _detail(
            icon: const Icon(
              Icons.attach_money,
              size: AppSizes.points_32,
            ),
            value: product.price,
          ),
          _vDivider(themeData),
          _detail(
            icon: AppText.titleLarge(
              'Runtime',
              mergeWith: const TextStyle(
                fontSize: AppSizes.points_24,
                fontWeight: FontWeight.bold,
              ),
            ),
            value: product.runtime,
          ),
          _vDivider(themeData),
          _detail(
            icon: const Icon(
              size: AppSizes.points_32,
              Icons.star,
            ),
            value: '${(double.tryParse(product.rate) ?? 0) / 2}',
          ),
        ],
      ),
    );
  }
}

Widget _detail({
  required final Widget icon,
  required final String value,
}) =>
    Column(
      children: [
        icon,
        AppUtils.verticalSpacer(AppSizes.points_4),
        AppText.bodyLarge(
          value,
          mergeWith: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    required this.product,
    this.hideBadge,
    this.fontSize,
    super.key,
  });

  final Product product;
  final bool? hideBadge;
  final double? fontSize;

  @override
  Widget build(final BuildContext context) {
    const goldColor = Color(0xFFE19804);
    const silverColor = Color(0xFFB8B8B8);
    return Row(
      // alignment: WrapAlignment.start,
      // crossAxisAlignment: WrapCrossAlignment.start,
      // runSpacing: AppSizes.points_8,
      // spacing: AppSizes.points_8,
      // direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 3,
          child: AppText.titleLarge(
            product.title,
            maxLines: 2,
            overflow: TextOverflow.clip,
            mergeWith: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ),
        if (_hasBadge) ...[
          Flexible(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.points_4),
              child: AppIcon(
                iconName: 'golden_badge.png',
                boxFit: BoxFit.cover,
                color:
                    double.parse(product.rate) <= 7.5 ? silverColor : goldColor,
                size: AppSizes.points_32,
              ),
            ),
          ),
        ]
      ],
    );
  }

  bool get _hasBadge =>
      (double.parse(product.rate) > 5) && !(hideBadge ?? false);
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    required this.product,
    this.imageBuilder,
    this.alignment,
    this.filterQuality,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.width,
    this.height,
    super.key,
  });

  final Product product;
  final Widget Function(
      BuildContext context, ImageProvider<Object> imageProvider)? imageBuilder;

  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;
  final Color? color;
  final BlendMode? colorBlendMode;

  final FilterQuality? filterQuality;

  @override
  Widget build(final BuildContext context) => CachedNetworkImage(
        imageUrl: product.image,
        cacheKey: product.id,
        imageBuilder: imageBuilder,
        progressIndicatorBuilder: (final context, final url, final progress) =>
            Center(
          child: AppLoading(
            progress: progress.progress,
          ),
        ),
        errorWidget: (final context, final url, final error) =>
            const Center(child: Icon(Icons.error)),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment ?? Alignment.center,
        color: color,
        colorBlendMode: colorBlendMode,
      );
}