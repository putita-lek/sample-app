import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_device_event.dart';
part 'register_device_state.dart';

class RegisterDeviceBloc
    extends Bloc<RegisterDeviceEvent, RegisterDeviceState> {
  RegisterDeviceBloc() : super(RegisterDeviceInitial()) {
    on<UpdateCIDRegisterDeviceEvent>((event, emit) {
      print('UpdateCIDRegisterDeviceEvent');

      emit(RegisterDeviceInProgress(cid: 'cid'));
    });
  }
}
