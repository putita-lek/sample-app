part of 'deposit_bloc.dart';

sealed class DepositState {
  double amount;

  DepositState({required this.amount});
}

final class DepositInitial extends DepositState {
  DepositInitial({super.amount = 0});
}

final class DepositInProgress extends DepositState {
  DepositInProgress({required super.amount});
}
