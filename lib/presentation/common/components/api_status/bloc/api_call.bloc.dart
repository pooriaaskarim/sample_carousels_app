import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/common/api_status.dart';
import '../../../../../domain/common/entity.failure.dart';
import '../../../../../infrastructure/api_service/api_utils.dart';

part 'api_call.bloc.freezed.dart';
part 'api_call.event.dart';
part 'api_call.state.dart';

class ApiStatusBloc<T> extends Bloc<ApiStatusEvent<T>, ApiStatusState<T>> {
  ApiStatusBloc() : super(ApiStatusState.state(ApiStatus.idle())) {
    on<_Call<T>>((final event, final emit) async {
      try {
        emit(_State(ApiStatus.loading()));
        final result = await event.apiCall();
        emit(_State(ApiStatus.success(result)));
      } on Exception catch (e) {
        emit(
          _State(
            ApiStatus.failure(
              e is DioException ? e.failure : const FailureEntity(),
            ),
          ),
        );
      }
    });
  }
}