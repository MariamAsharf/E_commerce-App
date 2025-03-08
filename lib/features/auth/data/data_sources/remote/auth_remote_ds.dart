import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/data/models/signup_request_model.dart';

abstract class AuthRemoteDS {
  Future<AuthModel> signUp({SignUpRequestModel? request});

  Future<AuthModel> login(String email, String password);
}
