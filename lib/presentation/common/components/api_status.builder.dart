import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/common/entity.failure.dart';
import 'api_status/bloc/api_call.bloc.dart';
import 'app.loading.dart';
import 'retry_widget.dart';

class ApiStatusBuilder<T> extends StatelessWidget {
  const ApiStatusBuilder({
    required this.apiCall,
    required this.onSuccess,
    this.onIdle,
    this.onLoading,
    this.onFailure,
    super.key,
  });

  final Future<T> Function() apiCall;
  final Widget Function(double? progress)? onLoading;
  final Widget Function()? onIdle;
  final Widget Function(T result) onSuccess;
  final Widget Function(
    FailureEntity failure,
    void Function() onRetry,
  )? onFailure;

  @override
  Widget build(final BuildContext context) => BlocProvider<ApiStatusBloc<T>>(
        create: (final context) =>
            ApiStatusBloc()..add(ApiStatusEvent.call(apiCall)),
        child: BlocBuilder<ApiStatusBloc<T>, ApiStatusState<T>>(
          builder: (final context, final state) => state.status.when(
            idle: onIdle ?? () => const SizedBox.shrink(),
            success: onSuccess,
            failure: (final message) =>
                onFailure?.call(
                    message,
                    () => BlocProvider.of<ApiStatusBloc>(context)
                        .add(ApiStatusEvent.call(apiCall))) ??
                RetryWidget(
                  onRetry: () => BlocProvider.of<ApiStatusBloc>(context)
                      .add(ApiStatusEvent.call(apiCall)),
                  message: message.message,
                ),
            loading: (final progress) =>
                onLoading?.call(progress) ??
                Center(
                  child: AppLoading(
                    progress: progress,
                  ),
                ),
          ),
        ),
      );
}