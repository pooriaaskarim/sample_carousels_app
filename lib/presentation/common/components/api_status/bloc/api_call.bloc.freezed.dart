// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_call.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiStatusEvent<T> {
  Future<T> Function() get apiCall => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Future<T> Function() apiCall) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Future<T> Function() apiCall)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Future<T> Function() apiCall)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Call<T> value) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Call<T> value)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Call<T> value)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiStatusEventCopyWith<T, ApiStatusEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStatusEventCopyWith<T, $Res> {
  factory $ApiStatusEventCopyWith(
          ApiStatusEvent<T> value, $Res Function(ApiStatusEvent<T>) then) =
      _$ApiStatusEventCopyWithImpl<T, $Res, ApiStatusEvent<T>>;
  @useResult
  $Res call({Future<T> Function() apiCall});
}

/// @nodoc
class _$ApiStatusEventCopyWithImpl<T, $Res, $Val extends ApiStatusEvent<T>>
    implements $ApiStatusEventCopyWith<T, $Res> {
  _$ApiStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCall = null,
  }) {
    return _then(_value.copyWith(
      apiCall: null == apiCall
          ? _value.apiCall
          : apiCall // ignore: cast_nullable_to_non_nullable
              as Future<T> Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallImplCopyWith<T, $Res>
    implements $ApiStatusEventCopyWith<T, $Res> {
  factory _$$CallImplCopyWith(
          _$CallImpl<T> value, $Res Function(_$CallImpl<T>) then) =
      __$$CallImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Future<T> Function() apiCall});
}

/// @nodoc
class __$$CallImplCopyWithImpl<T, $Res>
    extends _$ApiStatusEventCopyWithImpl<T, $Res, _$CallImpl<T>>
    implements _$$CallImplCopyWith<T, $Res> {
  __$$CallImplCopyWithImpl(
      _$CallImpl<T> _value, $Res Function(_$CallImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiCall = null,
  }) {
    return _then(_$CallImpl<T>(
      null == apiCall
          ? _value.apiCall
          : apiCall // ignore: cast_nullable_to_non_nullable
              as Future<T> Function(),
    ));
  }
}

/// @nodoc

class _$CallImpl<T> implements _Call<T> {
  const _$CallImpl(this.apiCall);

  @override
  final Future<T> Function() apiCall;

  @override
  String toString() {
    return 'ApiStatusEvent<$T>.call(apiCall: $apiCall)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallImpl<T> &&
            (identical(other.apiCall, apiCall) || other.apiCall == apiCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiCall);

  /// Create a copy of ApiStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallImplCopyWith<T, _$CallImpl<T>> get copyWith =>
      __$$CallImplCopyWithImpl<T, _$CallImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Future<T> Function() apiCall) call,
  }) {
    return call(apiCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Future<T> Function() apiCall)? call,
  }) {
    return call?.call(apiCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Future<T> Function() apiCall)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(apiCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Call<T> value) call,
  }) {
    return call(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Call<T> value)? call,
  }) {
    return call?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Call<T> value)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(this);
    }
    return orElse();
  }
}

abstract class _Call<T> implements ApiStatusEvent<T> {
  const factory _Call(final Future<T> Function() apiCall) = _$CallImpl<T>;

  @override
  Future<T> Function() get apiCall;

  /// Create a copy of ApiStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallImplCopyWith<T, _$CallImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApiStatusState<T> {
  ApiStatus<T> get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiStatus<T> status) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStatus<T> status)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStatus<T> status)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State<T> value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State<T> value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State<T> value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiStatusStateCopyWith<T, ApiStatusState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStatusStateCopyWith<T, $Res> {
  factory $ApiStatusStateCopyWith(
          ApiStatusState<T> value, $Res Function(ApiStatusState<T>) then) =
      _$ApiStatusStateCopyWithImpl<T, $Res, ApiStatusState<T>>;
  @useResult
  $Res call({ApiStatus<T> status});

  $ApiStatusCopyWith<T, $Res> get status;
}

/// @nodoc
class _$ApiStatusStateCopyWithImpl<T, $Res, $Val extends ApiStatusState<T>>
    implements $ApiStatusStateCopyWith<T, $Res> {
  _$ApiStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus<T>,
    ) as $Val);
  }

  /// Create a copy of ApiStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<T, $Res> get status {
    return $ApiStatusCopyWith<T, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<T, $Res>
    implements $ApiStatusStateCopyWith<T, $Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl<T> value, $Res Function(_$StateImpl<T>) then) =
      __$$StateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ApiStatus<T> status});

  @override
  $ApiStatusCopyWith<T, $Res> get status;
}

/// @nodoc
class __$$StateImplCopyWithImpl<T, $Res>
    extends _$ApiStatusStateCopyWithImpl<T, $Res, _$StateImpl<T>>
    implements _$$StateImplCopyWith<T, $Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl<T> _value, $Res Function(_$StateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StateImpl<T>(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus<T>,
    ));
  }
}

/// @nodoc

class _$StateImpl<T> implements _State<T> {
  const _$StateImpl(this.status);

  @override
  final ApiStatus<T> status;

  @override
  String toString() {
    return 'ApiStatusState<$T>.state(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl<T> &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ApiStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<T, _$StateImpl<T>> get copyWith =>
      __$$StateImplCopyWithImpl<T, _$StateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiStatus<T> status) state,
  }) {
    return state(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStatus<T> status)? state,
  }) {
    return state?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStatus<T> status)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State<T> value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State<T> value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State<T> value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State<T> implements ApiStatusState<T> {
  const factory _State(final ApiStatus<T> status) = _$StateImpl<T>;

  @override
  ApiStatus<T> get status;

  /// Create a copy of ApiStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateImplCopyWith<T, _$StateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
