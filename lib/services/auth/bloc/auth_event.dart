import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventinitialize extends AuthEvent {
  const AuthEventinitialize();
}

class AuthEventlogIn extends AuthEvent {
  final String email;
  final String password;
  const AuthEventlogIn(
    this.email,
    this.password,
  );
}

class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}
