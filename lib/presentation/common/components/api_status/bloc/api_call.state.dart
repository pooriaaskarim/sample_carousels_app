part of 'api_call.bloc.dart';

@freezed
class ApiStatusState<T> with _$ApiStatusState<T> {
  const factory ApiStatusState.state(ApiStatus<T> status) = _State;
}