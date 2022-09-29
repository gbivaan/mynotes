import 'package:flutter/foundation.dart' show immutable;
import 'package:mynotes/services/auth/auth_user.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateLoading extends AuthState {
  const AuthStateLoading();
}

class AuthStateLoggedIn extends AuthState {
  final AuthUser user;
  const AuthStateLoggedIn(this.user);
}

class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification();
}

class AuthStateloggedOut extends AuthState {
  final Exception? exception;
  const AuthStateloggedOut(this.exception);
}

class AuthStateLogedOutFailure extends AuthState {
  final Exception exception;
  const AuthStateLogedOutFailure(this.exception);
}
