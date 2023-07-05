part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}
class AuthInitial extends AuthState {}

class ResgisterInitial extends AuthState {}
class ResgisterSuccess extends AuthState {}
class ResgisterLoading extends AuthState {}
class ResgisterFailure extends AuthState {
  String errorMessage;
  ResgisterFailure({required this.errorMessage});
}


class LoginInitial extends AuthState {}
class LoginSuccess extends AuthState {
  UserCredential user;
  LoginSuccess( {required this.user,});
}
class LoginLoading extends AuthState {}
class LoginFailure extends AuthState {
  String errorMessage;
  LoginFailure({required this.errorMessage});
}
