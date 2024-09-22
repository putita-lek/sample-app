import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'deposit_event.dart';
part 'deposit_state.dart';

class DepositBloc extends Bloc<DepositEvent, DepositState> {
  DepositBloc() : super(DepositInitial()) {
    on<InputDepositDetailEvent>((event, emit) {
      emit(DepositInProgress(amount: event.amount));
    });
  }
}
