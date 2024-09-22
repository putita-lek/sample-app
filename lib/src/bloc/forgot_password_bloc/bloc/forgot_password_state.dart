part of 'forgot_password_bloc.dart';

sealed class ForgotPasswordState {
  String email;

  ForgotPasswordState({required this.email});
}

final class ForgotPasswordInitial extends ForgotPasswordState {
  ForgotPasswordInitial({super.email = ''});
}

final class ForgotPasswordFillForm extends ForgotPasswordState {
  ForgotPasswordFillForm({required super.email});
}
