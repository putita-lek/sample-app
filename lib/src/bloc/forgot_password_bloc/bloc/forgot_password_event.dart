part of 'forgot_password_bloc.dart';

@immutable
sealed class ForgotPasswordEvent {}

class UpdateForgotPasswordForm extends ForgotPasswordEvent {
  final String email;

  UpdateForgotPasswordForm({required this.email});
}
