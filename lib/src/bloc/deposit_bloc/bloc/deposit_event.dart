part of 'deposit_bloc.dart';

@immutable
sealed class DepositEvent {}

class InputDepositDetailEvent extends DepositEvent {
  final double amount;

  InputDepositDetailEvent({required this.amount});
}
