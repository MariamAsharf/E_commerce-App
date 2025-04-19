part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial({
    @Default(RequestState.init) RequestState getProductsState,
    @Default(RequestState.init) RequestState addToCartState,
    @Default(RequestState.init) RequestState getFavouriteState,
    ProductModel? model,
    FavouriteModel? favouritemodel,
    CartModel? cartModel,
    RouteFailures? failures,
    RouteFailures? cartFailures,
    RouteFailures? favouriteFailures,
  }) = _Initial;
}
