import 'package:bloc/bloc.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:eCommerce_app/features/cart/domain/usecases/get_cart_use_case.dart';
import 'package:eCommerce_app/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:eCommerce_app/features/main_layout/home/domain/usecases/get_categories_use_case.dart';
import 'package:eCommerce_app/features/products_screen/data/models/CartModel.dart';
import 'package:eCommerce_app/features/products_screen/data/models/ProductModel.dart';
import 'package:eCommerce_app/features/products_screen/domain/usecases/get_favourite_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;

  GetCartUseCase getCartUseCase;

  AddToFavouriteUseCase addToFavouriteUseCase;

  HomeBloc(this.getCategoriesUseCase, this.getCartUseCase,
      this.addToFavouriteUseCase)
      : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () {},
        getCart: () async {
          emit(state.copyWith(getCartState: RequestState.loading));
          // getCategoriesUseCase.call();

          var result = await getCartUseCase();
          result.fold(
            (l) {
              emit(state.copyWith(
                  getCartState: RequestState.error, failures: l));
            },
            (r) {
              emit(state.copyWith(
                getCartState: RequestState.success,
                cartModel: r,
              ));
            },
          );
        },
        getFavourite: () async {
          emit(state.copyWith(getFavouriteState: RequestState.loading));
          // getCategoriesUseCase.call();

          var result = await addToFavouriteUseCase();
          result.fold(
            (l) {
              emit(state.copyWith(
                  getFavouriteState: RequestState.error, failures: l));
            },
            (r) {
              emit(state.copyWith(
                getFavouriteState: RequestState.success,
                favouriteModel: r,
              ));
            },
          );
        },
        getCategories: () async => await _getCategories(emit),
      );
    });
  }

  Future<void> _getCategories(Emitter<HomeState> emit) async {
    emit(state.copyWith(getCategoriesState: RequestState.loading));
    // getCategoriesUseCase.call();

    var result = await getCategoriesUseCase();
    result.fold(
      (l) {
        emit(state.copyWith(
            getCategoriesState: RequestState.error, failures: l));
      },
      (r) {
        emit(state.copyWith(
          getCategoriesState: RequestState.success,
          model: r,
        ));
      },
    );
  }
}
