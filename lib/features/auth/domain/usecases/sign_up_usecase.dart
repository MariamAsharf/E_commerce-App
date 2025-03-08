import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/data/models/signup_request_model.dart';
import 'package:eCommerce_app/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase {
  AuthRepo authRepo;

  SignUpUseCase(this.authRepo);

  Future<Either<AuthModel,RouteFailures>> call({required SignUpRequestModel request}) =>
      authRepo.signUp(request: request);
}
