import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  AuthRepo repo;

  LoginUseCase(this.repo);

  Future<Either<RouteFailures, AuthModel>> call(
          String email, String password) =>
      repo.login(email: email, password: password);
}
