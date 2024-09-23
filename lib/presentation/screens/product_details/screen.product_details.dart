import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/components/app.loading.dart';
import '../../common/components/app.text.dart';
import '../../common/components/retry_widget.dart';
import '../../common/theme/app.fonts.dart';
import '../../common/utils/app.sizes.dart';
import '../../common/utils/app.utils.dart';
import '../../common/utils/app.utils.responsive.dart';
import '../products/bloc/bloc.products.dart';
import 'widgets/product_detail.app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({required this.productId, super.key});

  final String productId;

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<ProductsBloc, ProductsState>(
        builder: (final context, final state) {
          final product = state.products
              .where(
                (final element) => element.id == productId,
              )
              .firstOrNull;
          {
            return Scaffold(
              appBar: product == null
                  ? AppBar(
                      title: AppText('Details'),
                    )
                  : null,
              body: state.when(
                initial: (final _) {
                  BlocProvider.of<ProductsBloc>(context)
                      .add(const ProductsEvent.retrieve());
                  return const SizedBox.shrink();
                },
                loading: (final products) => Center(
                  child: AppLoading(
                    content: AppText.bodyLarge('Loading Product ...'),
                  ),
                ),
                failure: (final products, final errorMessage) => RetryWidget(
                  onRetry: () => BlocProvider.of<ProductsBloc>(context)
                      .add(const ProductsEvent.retrieve()),
                  message: errorMessage ?? 'Unknown Error Occurred',
                ),
                loaded: (final _) => product == null
                    ? Center(
                        child: AppText.bodyLarge('Nothing Found!'),
                      )
                    : NestedScrollView(
                        headerSliverBuilder:
                            (final context, final innerBoxIsScrolled) => [
                          ProductDetailsAppBar(product: product),
                        ],
                        body: AppResponsiveUtils.responsiveContent(
                          context: context,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSizes.points_24,
                              horizontal: AppSizes.points_32,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _detail(
                                  icon: const Icon(
                                    Icons.location_on,
                                    size: AppSizes.points_32,
                                  ),
                                  title: 'City',
                                  value: product.city,
                                ),
                                AppUtils.verticalSpacer(),
                                _detail(
                                  icon: const Icon(
                                    Icons.co_present_rounded,
                                    size: AppSizes.points_32,
                                  ),
                                  title: 'Presenter',
                                  value: product.presenter,
                                ),
                                AppUtils.verticalSpacer(),
                                _detail(
                                  icon: const Icon(
                                    Icons.gamepad,
                                    size: AppSizes.points_32,
                                  ),
                                  title: 'Type',
                                  value: product.type,
                                ),
                                AppUtils.verticalSpacer(AppSizes.points_64),
                                AppText.rich(
                                  textAlign: TextAlign.left,
                                  style: AppFonts.textTheme.bodyMedium,
                                  TextSpan(
                                    children: [
                                      const TextSpan(text: 'Visit Url'),
                                      const TextSpan(text: '\n'),
                                      TextSpan(
                                        text: product.url,
                                        style: const TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(product.url));
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
            );
          }
        },
      );

  Widget _detail({
    required final Widget icon,
    required final String title,
    required final String value,
  }) =>
      Row(
        children: [
          Opacity(opacity: 0.3, child: icon),
          AppUtils.horizontalSpacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(title),
              AppUtils.verticalSpacer(AppSizes.points_4),
              AppText(
                value,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      );
}