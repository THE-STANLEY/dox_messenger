part of 'auth_bloc.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

class AuthFunc extends AuthState {}

class AuthFailure extends AuthState {}
