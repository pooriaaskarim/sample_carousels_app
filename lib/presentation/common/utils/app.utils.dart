import 'package:flutter/material.dart';

import 'app.sizes.dart';

class AppUtils {
  AppUtils._();

  ///returns a SizedBox of height [size] with a default of AppSizes.points_16
  static Widget verticalSpacer([final double size = AppSizes.points_16]) =>
      SizedBox(
        height: size,
      );

  ///returns a SizedBox of width [size] with a default of AppSizes.points_16
  static Widget horizontalSpacer([final double size = AppSizes.points_16]) =>
      SizedBox(
        width: size,
      );

  static void rebuildDescendantChildren(final BuildContext context) {
    void rebuild(final Element el) {
      el
        ..markNeedsBuild()
        ..visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  static bool _startsWithRtl(final String text) {
    const String ltrChars =
        r'A-Za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02B8\u0300-\u0590'
        r'\u0800-\u1FFF\u2C00-\uFB1C\uFDFE-\uFE6F\uFEFD-\uFFFF';
    const String rtlChars = r'\u0591-\u07FF\uFB1D-\uFDFD\uFE70-\uFEFC';
    return RegExp('^[^$ltrChars]*[$rtlChars]').hasMatch(text);
  }

  static TextDirection estimateDirectionOfText(
    final String text,
  ) {
    final words = text.split(RegExp(r'\s+'));
    if (_startsWithRtl(words.first)) {
      return TextDirection.rtl;
    } else {
      return TextDirection.ltr;
    }
  }
}

extension AppStringExtension on String {
  String capitalize() =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String get toLatinNumbers {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    String outPut = this;
    for (int i = 0; i < english.length; i++) {
      outPut = outPut.replaceAll(farsi[i], english[i]);
      outPut = outPut.replaceAll(arabic[i], english[i]);
    }

    return outPut;
  }
}