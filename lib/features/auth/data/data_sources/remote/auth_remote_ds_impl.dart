import 'package:eCommerce_app/core/api/api_manager.dart';
import 'package:eCommerce_app/core/resources/endpoints.dart';
import 'package:eCommerce_app/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:eCommerce_app/features/auth/data/models/auth_model.dart';
import 'package:eCommerce_app/features/auth/data/models/signup_request_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDS)
class AuthRemoteDSImpl implements AuthRemoteDS {
  APIManager apiManager;

  AuthRemoteDSImpl(this.apiManager);

  @override
  Future<AuthModel> signUp({SignUpRequestModel? request}) async {
    var result =
        await apiManager.postRequest(EndPoints.signUp, request!.toJson());

    AuthModel authModel = AuthModel.fromJson(result.data);
    return authModel;
  }

  @override
  Future<AuthModel> login(String email, String password) async {
    var result = await apiManager
        .postRequest(EndPoints.login, {"email": email, "password": password});

    AuthModel authModel = AuthModel.fromJson(result.data);
    return authModel;
  }
}
