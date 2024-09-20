part of 'api_call.bloc.dart';

@freezed
class ApiStatusEvent<T> with _$ApiStatusEvent<T> {
  const factory ApiStatusEvent.call(final Future<T> Function() apiCall) = _Call;
}