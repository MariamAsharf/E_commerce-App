import 'package:bloc/bloc.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:eCommerce_app/features/products_screen/data/models/CartModel.dart';
import 'package:eCommerce_app/features/products_screen/data/models/ProductModel.dart';
import 'package:eCommerce_app/features/products_screen/domain/usecases/add_to_cart.dart';
import 'package:eCommerce_app/features/products_screen/domain/usecases/get_favourite_use_case.dart';
import 'package:eCommerce_app/features/products_screen/domain/usecases/get_product_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetProductsUseCase getProductsUseCase;

  AddToCartUseCase addToCartUseCase;

  AddToFavouriteUseCase addToFavouriteUseCase;

  ProductBloc(this.getProductsUseCase, this.addToCartUseCase , this.addToFavouriteUseCase)
      : super(const ProductState.initial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await getProductsUseCase();
      result.fold(
        (l) {
          print(l.message);
          emit(state.copyWith(
              getProductsState: RequestState.error, failures: l));
        },
        (r) {
          emit(state.copyWith(
            getProductsState: RequestState.success,
            model: r,
          ));
        },
      );
    });

    on<AddToCartEvent>((event, emit) async {
      emit(state.copyWith(addToCartState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await addToCartUseCase(id: event.prodId);
      result.fold(
        (l) {
          print(l.message);
          emit(state.copyWith(
              addToCartState: RequestState.error, cartFailures: l));
        },
        (r) {
          emit(state.copyWith(
            addToCartState: RequestState.success,
            cartModel: r,
          ));
        },
      );
    });
    on<AddToFavouritesEvent>((event, emit) async {
      emit(state.copyWith(addToCartState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await addToFavouriteUseCase(id: event.prodId);
      result.fold(
            (l) {
          print(l.message);
          emit(state.copyWith(
              addToFavouriteState: RequestState.error, favouriteFailures: l));
        },
            (r) {
          emit(state.copyWith(
            addToFavouriteState: RequestState.success,
            favouritemodel: r,
          ));
        },
      );
    });
  }
}
