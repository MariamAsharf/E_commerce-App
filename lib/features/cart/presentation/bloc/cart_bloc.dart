import 'package:bloc/bloc.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:eCommerce_app/features/cart/domain/usecases/get_cart_use_case.dart';
import 'package:eCommerce_app/features/products_screen/data/models/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  GetCartUseCase getCartUseCase;

  CartBloc(this.getCartUseCase) : super(const CartState.initial()) {
    on<GetCartEvent>(
      (event, emit) async {
        emit(
          state.copyWith(getCartState: RequestState.loading),
        );
        var result = await getCartUseCase.call();
        result.fold(
          (l) {
            emit(
              state.copyWith(getCartState: RequestState.error, failures: l),
            );
          },
          (r) {
            emit(
              state.copyWith(
                getCartState: RequestState.success,
                model: r,
              ),
            );
          },
        );
      },
    );
  }
}
