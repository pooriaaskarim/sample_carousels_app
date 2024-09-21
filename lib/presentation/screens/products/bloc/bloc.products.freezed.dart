// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) update,
    required TResult Function() shuffle,
    required TResult Function(Product product) productVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? update,
    TResult? Function()? shuffle,
    TResult? Function(Product product)? productVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? update,
    TResult Function()? shuffle,
    TResult Function(Product product)? productVisited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_ProductVisited value) productVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_ProductVisited value)? productVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_ProductVisited value)? productVisited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$UpdateImpl(
      null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.products);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductsEvent.update(products: $products)';
  }

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) update,
    required TResult Function() shuffle,
    required TResult Function(Product product) productVisited,
  }) {
    return update(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? update,
    TResult? Function()? shuffle,
    TResult? Function(Product product)? productVisited,
  }) {
    return update?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? update,
    TResult Function()? shuffle,
    TResult Function(Product product)? productVisited,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_ProductVisited value) productVisited,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_ProductVisited value)? productVisited,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_ProductVisited value)? productVisited,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProductsEvent {
  const factory _Update(final List<Product> products) = _$UpdateImpl;

  List<Product> get products;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShuffleImplCopyWith<$Res> {
  factory _$$ShuffleImplCopyWith(
          _$ShuffleImpl value, $Res Function(_$ShuffleImpl) then) =
      __$$ShuffleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShuffleImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$ShuffleImpl>
    implements _$$ShuffleImplCopyWith<$Res> {
  __$$ShuffleImplCopyWithImpl(
      _$ShuffleImpl _value, $Res Function(_$ShuffleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShuffleImpl implements _Shuffle {
  const _$ShuffleImpl();

  @override
  String toString() {
    return 'ProductsEvent.shuffle()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) update,
    required TResult Function() shuffle,
    required TResult Function(Product product) productVisited,
  }) {
    return shuffle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? update,
    TResult? Function()? shuffle,
    TResult? Function(Product product)? productVisited,
  }) {
    return shuffle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? update,
    TResult Function()? shuffle,
    TResult Function(Product product)? productVisited,
    required TResult orElse(),
  }) {
    if (shuffle != null) {
      return shuffle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_ProductVisited value) productVisited,
  }) {
    return shuffle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_ProductVisited value)? productVisited,
  }) {
    return shuffle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_ProductVisited value)? productVisited,
    required TResult orElse(),
  }) {
    if (shuffle != null) {
      return shuffle(this);
    }
    return orElse();
  }
}

abstract class _Shuffle implements ProductsEvent {
  const factory _Shuffle() = _$ShuffleImpl;
}

/// @nodoc
abstract class _$$ProductVisitedImplCopyWith<$Res> {
  factory _$$ProductVisitedImplCopyWith(_$ProductVisitedImpl value,
          $Res Function(_$ProductVisitedImpl) then) =
      __$$ProductVisitedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductVisitedImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$ProductVisitedImpl>
    implements _$$ProductVisitedImplCopyWith<$Res> {
  __$$ProductVisitedImplCopyWithImpl(
      _$ProductVisitedImpl _value, $Res Function(_$ProductVisitedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductVisitedImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductVisitedImpl implements _ProductVisited {
  const _$ProductVisitedImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsEvent.productVisited(product: $product)';
  }

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVisitedImplCopyWith<_$ProductVisitedImpl> get copyWith =>
      __$$ProductVisitedImplCopyWithImpl<_$ProductVisitedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) update,
    required TResult Function() shuffle,
    required TResult Function(Product product) productVisited,
  }) {
    return productVisited(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? update,
    TResult? Function()? shuffle,
    TResult? Function(Product product)? productVisited,
  }) {
    return productVisited?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? update,
    TResult Function()? shuffle,
    TResult Function(Product product)? productVisited,
    required TResult orElse(),
  }) {
    if (productVisited != null) {
      return productVisited(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_ProductVisited value) productVisited,
  }) {
    return productVisited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_ProductVisited value)? productVisited,
  }) {
    return productVisited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_ProductVisited value)? productVisited,
    required TResult orElse(),
  }) {
    if (productVisited != null) {
      return productVisited(this);
    }
    return orElse();
  }
}

abstract class _ProductVisited implements ProductsEvent {
  const factory _ProductVisited(final Product product) = _$ProductVisitedImpl;

  Product get product;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVisitedImplCopyWith<_$ProductVisitedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  List<Product> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$StateImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl({required this.products});

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductsState.state(products: $products)';
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> products) state,
  }) {
    return state(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> products)? state,
  }) {
    return state?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> products)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements ProductsState {
  const factory _State({required final List<Product> products}) = _$StateImpl;

  @override
  List<Product> get products;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
