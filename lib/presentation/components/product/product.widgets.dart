import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/product/product.model.dart';
import '../../common/components/app.icon.dart';
import '../../common/components/app.loading.dart';
import '../../common/components/app.text.dart';
import '../../common/utils/app.sizes.dart';
import '../../common/utils/app.utils.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    required this.product,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    super.key,
  });

  final Product product;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;

  @override
  Widget build(final BuildContext context) => AppText.titleLarge(
        product.title,
        maxLines: 2,
        overflow: TextOverflow.clip,
        mergeWith: TextStyle(
          fontWeight: fontWeight ?? FontWeight.bold,
          fontSize: fontSize,
          color: textColor,
        ),
      );
}

class ProductStats extends StatelessWidget {
  const ProductStats({required this.product, this.overlayColor, super.key});

  final Color? overlayColor;
  final Product product;

  Widget _detail({
    required final Widget icon,
    required final String value,
  }) =>
      Column(
        children: [
          icon,
          AppUtils.verticalSpacer(AppSizes.points_4),
          AppText.bodyMedium(
            value,
            mergeWith: TextStyle(
              color: overlayColor,
            ),
          ),
        ],
      );

  Widget _vDivider(final ThemeData themeData) => VerticalDivider(
        color:
            (overlayColor ?? themeData.colorScheme.onSurface).withOpacity(0.30),
        thickness: 0.8,
        indent: AppSizes.points_16,
        endIndent: AppSizes.points_16,
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
            icon: AppText.titleLarge(
              'Runtime',
              mergeWith: TextStyle(
                color: overlayColor,
                fontSize: AppSizes.points_16,
                fontWeight: FontWeight.bold,
              ),
            ),
            value:
                '${product.runtime} time${int.parse(product.runtime) > 1 ? 's' : ''}',
          ),
          _vDivider(themeData),
          _detail(
            icon: Icon(
              Icons.attach_money,
              size: AppSizes.points_24,
              color: overlayColor,
            ),
            value: product.price,
          ),
          _vDivider(themeData),
          _detail(
            icon: Icon(
              size: AppSizes.points_24,
              color: overlayColor,
              Icons.star,
            ),
            value: '${(double.tryParse(product.rate) ?? 0) / 2}',
          ),
        ],
      ),
    );
  }
}

class ProductBadge extends StatelessWidget {
  const ProductBadge({
    required this.product,
    this.size = AppSizes.points_32,
    super.key,
  });

  final Product product;
  final double size;

  @override
  Widget build(final BuildContext context) {
    const goldColor = Color(0xFFD59210);
    const silverColor = Color(0xFFB8B8B8);

    return double.parse(product.rate) > 5
        ? Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                  blurRadius: 10.0,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: AppIcon(
              iconName: 'golden_badge.png',
              boxFit: BoxFit.cover,
              color:
                  double.parse(product.rate) <= 7.5 ? silverColor : goldColor,
              size: size,
            ),
          )
        : const SizedBox.shrink();
  }
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
    BuildContext context,
    ImageProvider<Object> imageProvider,
  )? imageBuilder;

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
            const Center(child: Icon(Icons.file_download_off)),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment ?? Alignment.center,
        color: color,
        colorBlendMode: colorBlendMode,
      );
}