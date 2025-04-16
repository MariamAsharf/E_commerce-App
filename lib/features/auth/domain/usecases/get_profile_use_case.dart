import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/data/models/signup_request_model.dart';
import 'package:eCommerce_app/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProfileUseCase {
  AuthRepo authRepo;

  GetProfileUseCase(this.authRepo);

  Future<Either<RouteFailures, AuthModel>> call({required SignUpRequestModel request}) =>
      authRepo.profile(request: request);
}
