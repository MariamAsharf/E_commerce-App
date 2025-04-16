import 'package:bloc/bloc.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/data/models/signup_request_model.dart';
import 'package:eCommerce_app/features/auth/domain/usecases/get_profile_use_case.dart';
import 'package:eCommerce_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  GetProfileUseCase getProfileUseCase;

  ProfileBloc(this.getProfileUseCase) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {});

    on<GetProfileEvent>(
      (event, emit) async {
        emit(state.copyWith(getProfileState: RequestState.loading));
        // getCategoriesUseCase.call();

        var result = await getProfileUseCase(request: SignUpRequestModel());
        result.fold(
          (l) {
            emit(state.copyWith(
                getProfileState: RequestState.error, failures: l));
          },
          (r) {
            emit(state.copyWith(
              getProfileState: RequestState.success,
              model: r,
            ));
          },
        );
      },
    );
  }
}
