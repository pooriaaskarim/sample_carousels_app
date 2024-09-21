import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app.utils.responsive.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    this.alignment = Alignment.topCenter,
    this.appBar,
    this.backgroundColor,
    this.body,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.controllerTag,
    this.drawer,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.drawerScrimColor,
    this.endDrawer,
    this.endDrawerEnableOpenDragGesture = true,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.floatingActionButton,
    this.floatingActionButtonAnimator,
    this.floatingActionButtonLocation,
    this.hasScrollableContent = false,
    this.largerPaddings = false,
    this.onDispose,
    this.onDrawerChanged,
    this.onEndDrawerChanged,
    this.persistentFooterAlignment = AlignmentDirectional.centerEnd,
    this.persistentFooterButtons,
    this.primary = true,
    this.resizeToAvoidBottomInset = true,
    this.restorationId,
    this.scrollDirection = Axis.vertical,
    super.key,
  });

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final PreferredSizeWidget? appBar;

  final Widget? body;

  final Widget? floatingActionButton;

  final FloatingActionButtonLocation? floatingActionButtonLocation;

  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<Widget>? persistentFooterButtons;

  final AlignmentDirectional persistentFooterAlignment;

  final Widget? drawer;

  final DrawerCallback? onDrawerChanged;

  final Widget? endDrawer;

  final DrawerCallback? onEndDrawerChanged;

  final Color? drawerScrimColor;

  final Color? backgroundColor;

  final Widget? bottomNavigationBar;

  final Widget? bottomSheet;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final DragStartBehavior drawerDragStartBehavior;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  final bool hasScrollableContent;
  final Axis scrollDirection;
  final Alignment alignment;
  final String? controllerTag;
  final void Function()? onDispose;

  final bool largerPaddings;

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: appBar,
        bottomSheet: bottomSheet,
        endDrawer: endDrawer,
        bottomNavigationBar: bottomNavigationBar,
        body: SafeArea(
          child: AppResponsiveUtils.responsiveContent(
            context: context,
            largerPaddings: largerPaddings,
            isScrollable: hasScrollableContent,
            alignment: alignment,
            scrollDirection: scrollDirection,
            child: body ?? const SizedBox.shrink(),
          ),
        ),
        backgroundColor: backgroundColor,
        restorationId: restorationId,
        drawer: drawer,
        extendBody: extendBody,
        drawerDragStartBehavior: drawerDragStartBehavior,
        drawerEdgeDragWidth: drawerEdgeDragWidth,
        drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
        drawerScrimColor: drawerScrimColor,
        endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
        persistentFooterButtons: persistentFooterButtons,
        persistentFooterAlignment: persistentFooterAlignment,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        floatingActionButtonAnimator: floatingActionButtonAnimator,
        floatingActionButtonLocation: floatingActionButtonLocation,
        onDrawerChanged: onDrawerChanged,
        onEndDrawerChanged: onEndDrawerChanged,
        primary: primary,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        floatingActionButton: floatingActionButton,
      );
}