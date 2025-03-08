import 'package:bloc/bloc.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:eCommerce_app/features/products_screen/data/models/ProductModel.dart';
import 'package:eCommerce_app/features/products_screen/domain/usecases/get_favourite_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favourite_bloc.freezed.dart';
part 'favourite_event.dart';
part 'favourite_state.dart';

@injectable
class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  AddToFavouriteUseCase addToFavouriteUseCase;

  FavouriteBloc(this.addToFavouriteUseCase)
      : super(const FavouriteState.initial()) {
    on<AddToFavouriteEvent>((event, emit) async {
      emit(state.copyWith(addToFavouriteState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await addToFavouriteUseCase();
      result.fold(
        (l) {
          emit(state.copyWith(
              addToFavouriteState: RequestState.error, failures: l));
        },
        (r) {
          emit(state.copyWith(
            addToFavouriteState: RequestState.success,
            model: r,
          ));
        },
      );
    });
  }
}
