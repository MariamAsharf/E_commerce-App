part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(RequestState.init) RequestState getCategoriesState,
    @Default(RequestState.init) RequestState getCartState,
    @Default(RequestState.init) RequestState getFavouriteState,

    CategoriesModel? model,
    CartModel? cartModel,
    FavouriteModel? favouriteModel,

    RouteFailures? failures,
  }) = _Initial;
}
