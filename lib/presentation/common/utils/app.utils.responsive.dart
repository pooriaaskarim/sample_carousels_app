import 'package:flutter/material.dart';

class AppResponsiveUtils {
  AppResponsiveUtils._();

  static EdgeInsets horizontalPadding(final BuildContext context,
      {final bool largerPaddings = false,}) {
    final width = MediaQuery.of(context).size.width;
    return EdgeInsets.symmetric(
      horizontal: (width < 480)
          ? 0
          : (width >= 480 && width < 900)
              ? width / 10
              : (width >= 900 && width < 1200)
                  ? width / (largerPaddings ? 4 : 8)
                  : width / (largerPaddings ? 4 : 8),
    );
  }

  static EdgeInsets verticalPadding(final BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return EdgeInsets.symmetric(
      vertical: (height < 900) ? 0 : height / 10,
    );
  }

  static Widget responsiveContent({
    required final Widget child,
    required final BuildContext context,
    final bool isScrollable = false,
    final Axis scrollDirection = Axis.vertical,
    final Alignment alignment = Alignment.topCenter,
    final bool largerPaddings = false,
  }) =>
      Padding(
        padding: scrollDirection == Axis.vertical
            ? horizontalPadding(context, largerPaddings: largerPaddings)
            : verticalPadding(context),
        child: Align(
          alignment: alignment,
          child: isScrollable
              ? SingleChildScrollView(
                  physics: const PageScrollPhysics(),
                  clipBehavior: Clip.hardEdge,
                  scrollDirection: scrollDirection,
                  child: child,
                )
              : child,
        ),
      );
}
