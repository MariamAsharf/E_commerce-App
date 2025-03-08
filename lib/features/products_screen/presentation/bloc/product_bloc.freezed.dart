// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? subCatId) getProduct,
    required TResult Function(String prodId) addToCart,
    required TResult Function(String prodId) addToFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? subCatId)? getProduct,
    TResult? Function(String prodId)? addToCart,
    TResult? Function(String prodId)? addToFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? subCatId)? getProduct,
    TResult Function(String prodId)? addToCart,
    TResult Function(String prodId)? addToFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProduct,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(AddToFavouritesEvent value) addToFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProduct,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(AddToFavouritesEvent value)? addToFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProduct,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(AddToFavouritesEvent value)? addToFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? subCatId) getProduct,
    required TResult Function(String prodId) addToCart,
    required TResult Function(String prodId) addToFavourite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? subCatId)? getProduct,
    TResult? Function(String prodId)? addToCart,
    TResult? Function(String prodId)? addToFavourite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? subCatId)? getProduct,
    TResult Function(String prodId)? addToCart,
    TResult Function(String prodId)? addToFavourite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProduct,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(AddToFavouritesEvent value) addToFavourite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProduct,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(AddToFavouritesEvent value)? addToFavourite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProduct,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(AddToFavouritesEvent value)? addToFavourite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsEventImplCopyWith<$Res> {
  factory _$$GetProductsEventImplCopyWith(_$GetProductsEventImpl value,
          $Res Function(_$GetProductsEventImpl) then) =
      __$$GetProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? subCatId});
}

/// @nodoc
class __$$GetProductsEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductsEventImpl>
    implements _$$GetProductsEventImplCopyWith<$Res> {
  __$$GetProductsEventImplCopyWithImpl(_$GetProductsEventImpl _value,
      $Res Function(_$GetProductsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCatId = freezed,
  }) {
    return _then(_$GetProductsEventImpl(
      subCatId: freezed == subCatId
          ? _value.subCatId
          : subCatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetProductsEventImpl implements GetProductsEvent {
  const _$GetProductsEventImpl({this.subCatId});

  @override
  final String? subCatId;

  @override
  String toString() {
    return 'ProductEvent.getProduct(subCatId: $subCatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsEventImpl &&
            (identical(other.subCatId, subCatId) ||
                other.subCatId == subCatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCatId);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsEventImplCopyWith<_$GetProductsEventImpl> get copyWith =>
      __$$GetProductsEventImplCopyWithImpl<_$GetProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? subCatId) getProduct,
    required TResult Function(String prodId) addToCart,
    required TResult Function(String prodId) addToFavourite,
  }) {
    return getProduct(subCatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? subCatId)? getProduct,
    TResult? Function(String prodId)? addToCart,
    TResult? Function(String prodId)? addToFavourite,
  }) {
    return getProduct?.call(subCatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? subCatId)? getProduct,
    TResult Function(String prodId)? addToCart,
    TResult Function(String prodId)? addToFavourite,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(subCatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProduct,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(AddToFavouritesEvent value) addToFavourite,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProduct,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(AddToFavouritesEvent value)? addToFavourite,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProduct,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(AddToFavouritesEvent value)? addToFavourite,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GetProductsEvent implements ProductEvent {
  const factory GetProductsEvent({final String? subCatId}) =
      _$GetProductsEventImpl;

  String? get subCatId;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductsEventImplCopyWith<_$GetProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartEventImplCopyWith<$Res> {
  factory _$$AddToCartEventImplCopyWith(_$AddToCartEventImpl value,
          $Res Function(_$AddToCartEventImpl) then) =
      __$$AddToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$AddToCartEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddToCartEventImpl>
    implements _$$AddToCartEventImplCopyWith<$Res> {
  __$$AddToCartEventImplCopyWithImpl(
      _$AddToCartEventImpl _value, $Res Function(_$AddToCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$AddToCartEventImpl(
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCartEventImpl implements AddToCartEvent {
  const _$AddToCartEventImpl({required this.prodId});

  @override
  final String prodId;

  @override
  String toString() {
    return 'ProductEvent.addToCart(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      __$$AddToCartEventImplCopyWithImpl<_$AddToCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? subCatId) getProduct,
    required TResult Function(String prodId) addToCart,
    required TResult Function(String prodId) addToFavourite,
  }) {
    return addToCart(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? subCatId)? getProduct,
    TResult? Function(String prodId)? addToCart,
    TResult? Function(String prodId)? addToFavourite,
  }) {
    return addToCart?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? subCatId)? getProduct,
    TResult Function(String prodId)? addToCart,
    TResult Function(String prodId)? addToFavourite,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProduct,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(AddToFavouritesEvent value) addToFavourite,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProduct,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(AddToFavouritesEvent value)? addToFavourite,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProduct,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(AddToFavouritesEvent value)? addToFavourite,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements ProductEvent {
  const factory AddToCartEvent({required final String prodId}) =
      _$AddToCartEventImpl;

  String get prodId;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFavouritesEventImplCopyWith<$Res> {
  factory _$$AddToFavouritesEventImplCopyWith(_$AddToFavouritesEventImpl value,
          $Res Function(_$AddToFavouritesEventImpl) then) =
      __$$AddToFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$AddToFavouritesEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddToFavouritesEventImpl>
    implements _$$AddToFavouritesEventImplCopyWith<$Res> {
  __$$AddToFavouritesEventImplCopyWithImpl(_$AddToFavouritesEventImpl _value,
      $Res Function(_$AddToFavouritesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$AddToFavouritesEventImpl(
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToFavouritesEventImpl implements AddToFavouritesEvent {
  const _$AddToFavouritesEventImpl({required this.prodId});

  @override
  final String prodId;

  @override
  String toString() {
    return 'ProductEvent.addToFavourite(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavouritesEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavouritesEventImplCopyWith<_$AddToFavouritesEventImpl>
      get copyWith =>
          __$$AddToFavouritesEventImplCopyWithImpl<_$AddToFavouritesEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? subCatId) getProduct,
    required TResult Function(String prodId) addToCart,
    required TResult Function(String prodId) addToFavourite,
  }) {
    return addToFavourite(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? subCatId)? getProduct,
    TResult? Function(String prodId)? addToCart,
    TResult? Function(String prodId)? addToFavourite,
  }) {
    return addToFavourite?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? subCatId)? getProduct,
    TResult Function(String prodId)? addToCart,
    TResult Function(String prodId)? addToFavourite,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProduct,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(AddToFavouritesEvent value) addToFavourite,
  }) {
    return addToFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProduct,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(AddToFavouritesEvent value)? addToFavourite,
  }) {
    return addToFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProduct,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(AddToFavouritesEvent value)? addToFavourite,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(this);
    }
    return orElse();
  }
}

abstract class AddToFavouritesEvent implements ProductEvent {
  const factory AddToFavouritesEvent({required final String prodId}) =
      _$AddToFavouritesEventImpl;

  String get prodId;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToFavouritesEventImplCopyWith<_$AddToFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  RequestState get getProductsState => throw _privateConstructorUsedError;
  RequestState get addToCartState => throw _privateConstructorUsedError;
  RequestState get addToFavouriteState => throw _privateConstructorUsedError;
  ProductModel? get model => throw _privateConstructorUsedError;
  ProductModel? get favouritemodel => throw _privateConstructorUsedError;
  CartModel? get cartModel => throw _privateConstructorUsedError;
  RouteFailures? get failures => throw _privateConstructorUsedError;
  RouteFailures? get cartFailures => throw _privateConstructorUsedError;
  RouteFailures? get favouriteFailures => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            RequestState addToFavouriteState,
            ProductModel? model,
            ProductModel? favouritemodel,
            CartModel? cartModel,
            RouteFailures? failures,
            RouteFailures? cartFailures,
            RouteFailures? favouriteFailures)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getProductsState,
            RequestState addToCartState,
            RequestState addToFavouriteState,
            ProductModel? model,
            ProductModel? favouritemodel,
            CartModel? cartModel,
            RouteFailures? failures,
            RouteFailures? cartFailures,
            RouteFailures? favouriteFailures)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            RequestState addToFavouriteState,
            ProductModel? model,
            ProductModel? favouritemodel,
            CartModel? cartModel,
            RouteFailures? failures,
            RouteFailures? cartFailures,
            RouteFailures? favouriteFailures)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {RequestState getProductsState,
      RequestState addToCartState,
      RequestState addToFavouriteState,
      ProductModel? model,
      ProductModel? favouritemodel,
      CartModel? cartModel,
      RouteFailures? failures,
      RouteFailures? cartFailures,
      RouteFailures? favouriteFailures});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProductsState = null,
    Object? addToCartState = null,
    Object? addToFavouriteState = null,
    Object? model = freezed,
    Object? favouritemodel = freezed,
    Object? cartModel = freezed,
    Object? failures = freezed,
    Object? cartFailures = freezed,
    Object? favouriteFailures = freezed,
  }) {
    return _then(_value.copyWith(
      getProductsState: null == getProductsState
          ? _value.getProductsState
          : getProductsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      addToCartState: null == addToCartState
          ? _value.addToCartState
          : addToCartState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      addToFavouriteState: null == addToFavouriteState
          ? _value.addToFavouriteState
          : addToFavouriteState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      favouritemodel: freezed == favouritemodel
          ? _value.favouritemodel
          : favouritemodel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      cartFailures: freezed == cartFailures
          ? _value.cartFailures
          : cartFailures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      favouriteFailures: freezed == favouriteFailures
          ? _value.favouriteFailures
          : favouriteFailures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getProductsState,
      RequestState addToCartState,
      RequestState addToFavouriteState,
      ProductModel? model,
      ProductModel? favouritemodel,
      CartModel? cartModel,
      RouteFailures? failures,
      RouteFailures? cartFailures,
      RouteFailures? favouriteFailures});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProductsState = null,
    Object? addToCartState = null,
    Object? addToFavouriteState = null,
    Object? model = freezed,
    Object? favouritemodel = freezed,
    Object? cartModel = freezed,
    Object? failures = freezed,
    Object? cartFailures = freezed,
    Object? favouriteFailures = freezed,
  }) {
    return _then(_$InitialImpl(
      getProductsState: null == getProductsState
          ? _value.getProductsState
          : getProductsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      addToCartState: null == addToCartState
          ? _value.addToCartState
          : addToCartState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      addToFavouriteState: null == addToFavouriteState
          ? _value.addToFavouriteState
          : addToFavouriteState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      favouritemodel: freezed == favouritemodel
          ? _value.favouritemodel
          : favouritemodel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      cartFailures: freezed == cartFailures
          ? _value.cartFailures
          : cartFailures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      favouriteFailures: freezed == favouriteFailures
          ? _value.favouriteFailures
          : favouriteFailures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getProductsState = RequestState.init,
      this.addToCartState = RequestState.init,
      this.addToFavouriteState = RequestState.init,
      this.model,
      this.favouritemodel,
      this.cartModel,
      this.failures,
      this.cartFailures,
      this.favouriteFailures});

  @override
  @JsonKey()
  final RequestState getProductsState;
  @override
  @JsonKey()
  final RequestState addToCartState;
  @override
  @JsonKey()
  final RequestState addToFavouriteState;
  @override
  final ProductModel? model;
  @override
  final ProductModel? favouritemodel;
  @override
  final CartModel? cartModel;
  @override
  final RouteFailures? failures;
  @override
  final RouteFailures? cartFailures;
  @override
  final RouteFailures? favouriteFailures;

  @override
  String toString() {
    return 'ProductState.initial(getProductsState: $getProductsState, addToCartState: $addToCartState, addToFavouriteState: $addToFavouriteState, model: $model, favouritemodel: $favouritemodel, cartModel: $cartModel, failures: $failures, cartFailures: $cartFailures, favouriteFailures: $favouriteFailures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getProductsState, getProductsState) ||
                other.getProductsState == getProductsState) &&
            (identical(other.addToCartState, addToCartState) ||
                other.addToCartState == addToCartState) &&
            (identical(other.addToFavouriteState, addToFavouriteState) ||
                other.addToFavouriteState == addToFavouriteState) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.favouritemodel, favouritemodel) ||
                other.favouritemodel == favouritemodel) &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.failures, failures) ||
                other.failures == failures) &&
            (identical(other.cartFailures, cartFailures) ||
                other.cartFailures == cartFailures) &&
            (identical(other.favouriteFailures, favouriteFailures) ||
                other.favouriteFailures == favouriteFailures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getProductsState,
      addToCartState,
      addToFavouriteState,
      model,
      favouritemodel,
      cartModel,
      failures,
      cartFailures,
      favouriteFailures);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            RequestState addToFavouriteState,
            ProductModel? model,
            ProductModel? favouritemodel,
            CartModel? cartModel,
            RouteFailures? failures,
            RouteFailures? cartFailures,
            RouteFailures? favouriteFailures)
        initial,
  }) {
    return initial(getProductsState, addToCartState, addToFavouriteState, model,
        favouritemodel, cartModel, failures, cartFailures, favouriteFailures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getProductsState,
            RequestState addToCartState,
            RequestState addToFavouriteState,
            ProductModel? model,
            ProductModel? favouritemodel,
            CartModel? cartModel,
            RouteFailures? failures,
            RouteFailures? cartFailures,
            RouteFailures? favouriteFailures)?
        initial,
  }) {
    return initial?.call(
        getProductsState,
        addToCartState,
        addToFavouriteState,
        model,
        favouritemodel,
        cartModel,
        failures,
        cartFailures,
        favouriteFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            RequestState addToFavouriteState,
            ProductModel? model,
            ProductModel? favouritemodel,
            CartModel? cartModel,
            RouteFailures? failures,
            RouteFailures? cartFailures,
            RouteFailures? favouriteFailures)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          getProductsState,
          addToCartState,
          addToFavouriteState,
          model,
          favouritemodel,
          cartModel,
          failures,
          cartFailures,
          favouriteFailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial(
      {final RequestState getProductsState,
      final RequestState addToCartState,
      final RequestState addToFavouriteState,
      final ProductModel? model,
      final ProductModel? favouritemodel,
      final CartModel? cartModel,
      final RouteFailures? failures,
      final RouteFailures? cartFailures,
      final RouteFailures? favouriteFailures}) = _$InitialImpl;

  @override
  RequestState get getProductsState;
  @override
  RequestState get addToCartState;
  @override
  RequestState get addToFavouriteState;
  @override
  ProductModel? get model;
  @override
  ProductModel? get favouritemodel;
  @override
  CartModel? get cartModel;
  @override
  RouteFailures? get failures;
  @override
  RouteFailures? get cartFailures;
  @override
  RouteFailures? get favouriteFailures;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
