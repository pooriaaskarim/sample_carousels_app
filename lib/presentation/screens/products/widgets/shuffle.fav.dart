import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/theme/app.elevations.dart';
import '../bloc/bloc.products.dart';

class ShuffleFav extends StatefulWidget {
  const ShuffleFav({
    required this.parentCarouselController,
    super.key,
  });

  final CarouselController parentCarouselController;

  @override
  State<ShuffleFav> createState() => ShuffleFavState();
}

class ShuffleFavState extends State<ShuffleFav> {
  bool isVisible = true;
  final Duration _disappearTimerDuration = const Duration(milliseconds: 380);
  Timer? _disappearTimer;

  @override
  void initState() {
    super.initState();
    widget.parentCarouselController.addListener(_onScrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.parentCarouselController.removeListener(_onScrollListener);
  }

  @override
  void setState(final fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void _onScrollListener() {
    if (widget.parentCarouselController.position.userScrollDirection !=
        ScrollDirection.idle) {
      isVisible = false;
    }
    _resetDisappearTimer();
    setState(() {});
  }

  void _resetDisappearTimer() {
    _disappearTimer?.cancel();
    if (!isVisible) {
      _disappearTimer = Timer(_disappearTimerDuration, () {
        setState(() {
          isVisible = true;
        });
      });
    }
  }

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<ProductsBloc, ProductsState>(
        builder: (final context, final state) => state.products.length <= 1
            ? const SizedBox.shrink()
            : AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: const Duration(milliseconds: 360),
                child: isVisible
                    ? FloatingActionButton(
                        elevation: AppElevations.level_4,
                        backgroundColor: Theme.of(context)
                            .colorScheme
                            .outlineVariant
                            .withOpacity(0.3),
                        onPressed: () {
                          BlocProvider.of<ProductsBloc>(context)
                              .add(const ProductsEvent.shuffle());
                          widget.parentCarouselController.animateTo(
                            0,
                            duration: const Duration(milliseconds: 680),
                            curve: Curves.easeInOut,
                          );
                        },
                        tooltip: 'Shuffle',
                        child: const Icon(Icons.shuffle),
                      )
                    : null,
              ),
      );
}