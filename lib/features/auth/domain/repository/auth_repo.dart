import 'package:dartz/dartz.dart';
import 'package:eCommerce_app/core/failuers/failuers.dart';
import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/data/models/signup_request_model.dart';

abstract class AuthRepo {
  Future<Either<AuthModel, RouteFailures>> signUp(
      {required SignUpRequestModel request});

  Future<Either<RouteFailures, AuthModel>> login(
      {required String email, required String password});

  Future<Either<RouteFailures, AuthModel>> profile(
      {required SignUpRequestModel request});
}
