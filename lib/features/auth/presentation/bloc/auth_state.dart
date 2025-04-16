part of 'auth_bloc.dart';

enum RequestState {
  init,
  loading,
  success,
  error,
}

class AuthState {
  RequestState? signUpRequestState;
  RequestState? loginRequestState;
  RequestState? profileRequestState;

  AuthModel? authModel;
  RouteFailures? failures;

  AuthState(
      {this.signUpRequestState,
      this.loginRequestState,
      this.profileRequestState,
      this.authModel,
      this.failures});

  AuthState copyWith({
    RequestState? signUpRequestState,
    RequestState? loginRequestState,
    RequestState? profileRequestState,
    AuthModel? authModel,
    RouteFailures? failures,
  }) {
    return AuthState(
      signUpRequestState: signUpRequestState ?? this.signUpRequestState,
      loginRequestState: loginRequestState ?? this.loginRequestState,
      profileRequestState: profileRequestState ?? this.profileRequestState,
      authModel: authModel ?? this.authModel,
      failures: failures ?? this.failures,
    );
  }
}

final class AuthInitial extends AuthState {
  AuthInitial()
      : super(
          loginRequestState: RequestState.init,
          signUpRequestState: RequestState.init,
          profileRequestState: RequestState.init,
        );
}
