import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../theme/app.elevations.dart';
import '../theme/app.fonts.dart';
import '../utils/app.constants.dart';
import '../utils/app.sizes.dart';
import '../utils/app.utils.dart';
import '../utils/app.utils.responsive.dart';
import 'app.text.dart';

const __defaultDismissDuration = Duration(seconds: 3);

const Color __infoColor = Color(0xFF51B4FA);
const Color __warningColor = Color(0xFFC97726);
const Color __errorColor = Color(0xFFD03333);
const Color __successColor = Color(0xFF2D7513);
const Color __foregroundColor = Colors.white;

class InAppNotification {
  InAppNotification({
    required final String message,
    final Widget? icon,
    final String? title,
    final InAppNotificationAction? action,
    final Color? backgroundColor,
    final Color? foregroundColor,
    final Duration? dismissDuration = __defaultDismissDuration,
    final EdgeInsetsGeometry? padding,
    final bool? showCloseIcon,
    final void Function()? onTap,
  })  : _backgroundColor = backgroundColor,
        _icon = icon,
        _action = action,
        _message = message,
        _title = title,
        _foregroundColor = foregroundColor,
        _padding = padding,
        _onTap = onTap,
        _dismissDuration = dismissDuration,
        _showCloseIcon = showCloseIcon,
        assert(
            dismissDuration != null || (onTap != null || action != null),
            'InAppNotification should have an action'
            ' or dismiss after a period of time.');

  factory InAppNotification.success({
    required final String message,
    final String? title,
    final InAppNotificationAction? action,
    final Duration? dismissDuration = __defaultDismissDuration,
    final EdgeInsetsGeometry? padding,
    final void Function()? onTap,
    final bool? showCloseIcon,
  }) =>
      InAppNotification(
        backgroundColor: __successColor,
        foregroundColor: __foregroundColor,
        title: title,
        action: action,
        message: message,
        dismissDuration: dismissDuration,
        padding: padding,
        onTap: onTap,
        showCloseIcon: showCloseIcon,
        icon: const Icon(
          Icons.check_circle,
          color: __foregroundColor,
        ),
      );

  factory InAppNotification.error({
    required final String message,
    final String? title,
    final InAppNotificationAction? action,
    final Duration? dismissDuration = __defaultDismissDuration,
    final EdgeInsetsGeometry? padding,
    final void Function()? onTap,
    final bool? showCloseIcon,
  }) =>
      InAppNotification(
        backgroundColor: __errorColor,
        foregroundColor: __foregroundColor,
        title: title,
        action: action,
        message: message,
        dismissDuration: dismissDuration,
        padding: padding,
        onTap: onTap,
        showCloseIcon: showCloseIcon,
        icon: const Icon(
          Icons.error,
          color: __foregroundColor,
        ),
      );

  factory InAppNotification.warning({
    required final String message,
    final String? title,
    final InAppNotificationAction? action,
    final Duration? dismissDuration = __defaultDismissDuration,
    final EdgeInsetsGeometry? padding,
    final void Function()? onTap,
    final bool? showCloseIcon,
  }) =>
      InAppNotification(
        backgroundColor: __warningColor,
        foregroundColor: __foregroundColor,
        title: title,
        action: action,
        message: message,
        dismissDuration: dismissDuration,
        padding: padding,
        onTap: onTap,
        showCloseIcon: showCloseIcon,
        icon: const Icon(
          Icons.warning,
          color: __foregroundColor,
        ),
      );

  factory InAppNotification.info({
    required final String message,
    final String? title,
    final InAppNotificationAction? action,
    final Duration? dismissDuration = __defaultDismissDuration,
    final EdgeInsetsGeometry? padding,
    final void Function()? onTap,
    final bool? showCloseIcon,
  }) =>
      InAppNotification(
        backgroundColor: __infoColor,
        foregroundColor: __foregroundColor,
        title: title,
        action: action,
        message: message,
        dismissDuration: dismissDuration,
        padding: padding,
        onTap: onTap,
        showCloseIcon: showCloseIcon,
        icon: const Icon(
          Icons.info_outline,
          color: __foregroundColor,
        ),
      );

  final String? _title;
  final String _message;
  final InAppNotificationAction? _action;
  final Widget? _icon;

  final Color? _backgroundColor;
  final Color? _foregroundColor;

  final EdgeInsetsGeometry? _padding;

  final void Function()? _onTap;

  final bool? _showCloseIcon;
  final Duration? _dismissDuration;

  bool get _isDismissible => _dismissDuration != null;

  OverlayEntry? _overlayEntry;
  bool _isHolding = false;

  Future<void> show() async {
    _overlayEntry = OverlayEntry(builder: build);
    //todo
    // App.router.routerDelegate.navigatorKey.currentState?.overlay
    //     ?.insert(_overlayEntry!);
    // await _delayedDismiss();
  }

  Future<void> _delayedDismiss() async {
    if (_isDismissible) {
      await Future.delayed(_dismissDuration!).then((final _) {
        if (!_isHolding) {
          dispose();
        }
      });
    }
  }

  void dispose() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  Widget build(final BuildContext context) {
    final themeData = Theme.of(context);

    final screenSize = MediaQuery.of(context).size;
    const double initialAlignment = -0.9;
    const dismissThreshold = -0.95;
    final ValueNotifier<double> verticalPosition =
        ValueNotifier<double>(initialAlignment);

    return Directionality(
      textDirection: AppUtils.estimateDirectionOfText(_message),
      child: GestureDetector(
        onVerticalDragEnd: !_isDismissible
            ? null
            : (final _) {
                if (verticalPosition.value > dismissThreshold &&
                    verticalPosition.value < initialAlignment) {
                  verticalPosition.value = initialAlignment;
                } else {
                  dispose();
                }
              },
        onVerticalDragUpdate: !_isDismissible
            ? null
            : (final details) {
                final updatedAlignment = -1 +
                    (details.globalPosition.dy / (screenSize.height / 2)) -
                    .11;
                verticalPosition.value = (updatedAlignment > initialAlignment)
                    ? initialAlignment
                    : updatedAlignment;
              },
        onLongPressDown: (final _) => _isHolding = true,
        onLongPressEnd: (final _) {
          _isHolding = false;
          _delayedDismiss();
        },
        child: ValueListenableBuilder(
          valueListenable: verticalPosition,
          builder: (final context, final value, final _) => Align(
            alignment: Alignment(0, value),
            child: Padding(
              padding: AppResponsiveUtils.horizontalPadding(
                context,
                largerPaddings: true,
              ).add(
                const EdgeInsets.symmetric(
                  vertical: AppSizes.points_8,
                  horizontal: AppSizes.points_12,
                ),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(AppConstants.borderRadius),
                color: (_backgroundColor ?? themeData.colorScheme.surface)
                    .withOpacity(0.8),
                elevation: AppElevations.level_3,
                child: InkWell(
                  borderRadius:
                      BorderRadius.circular(AppConstants.borderRadius),
                  onTap: _onTap == null
                      ? null
                      : () {
                          _onTap.call();
                          dispose();
                        },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.points_8,
                          horizontal: AppSizes.points_16,
                        ).add(_padding ?? EdgeInsets.zero),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _getTitle(themeData),
                            _getContent(themeData),
                            _getAction(),
                          ],
                        ),
                      ),
                      if (_isDismissible &&
                          ((_showCloseIcon ?? false) || kIsWeb))
                        PositionedDirectional(
                          top: AppSizes.points_4,
                          end: AppSizes.points_8,
                          child: SizedBox.square(
                            dimension: AppSizes.points_16,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              onPressed: dispose,
                              icon: Icon(
                                Icons.close,
                                color: _foregroundColor,
                                size: AppSizes.points_16,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getTitle(final ThemeData themeData) => _hasTitle
      ? Directionality(
          textDirection: AppUtils.estimateDirectionOfText(_title!),
          child: AppText(
            _title,
            style: themeData.textTheme.titleMedium?.copyWith(
              color: _foregroundColor ?? themeData.colorScheme.onSurface,
              fontWeight: AppFonts.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      : const SizedBox.shrink();

  Directionality _getContent(final ThemeData themeData) => Directionality(
        textDirection: AppUtils.estimateDirectionOfText(_message),
        child: LayoutBuilder(
          builder: (final _, final constraints) => Row(
            children: [
              if (_hasIcon)
                Container(
                  constraints: BoxConstraints(
                    maxWidth: constraints.maxWidth / 8,
                  ),
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: AppSizes.points_8,
                    vertical: AppSizes.points_4,
                  ),
                  child: _icon,
                ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: _hasIcon
                      ? constraints.maxWidth / 1.15
                      : constraints.maxWidth,
                ),
                child: AppText(
                  _message,
                  style: themeData.textTheme.bodyMedium?.copyWith(
                    color: _foregroundColor ?? themeData.colorScheme.onSurface,
                  ),
                  // maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _getAction() => _hasAction
      ? Row(
          textDirection: AppUtils.estimateDirectionOfText(_message),
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child: AppText(
                _action!.label,
                style: AppFonts.textTheme.labelMedium
                    ?.copyWith(color: _foregroundColor),
              ),
              onPressed: () {
                _action.onPressed();
                dispose();
              },
            ),
          ],
        )
      : const SizedBox.shrink();

  bool get _hasTitle => _title != null;

  bool get _hasIcon => _icon != null;

  bool get _hasAction => _action != null;
}

class InAppNotificationAction {
  const InAppNotificationAction({required this.label, required this.onPressed});

  final String label;
  final void Function() onPressed;
}