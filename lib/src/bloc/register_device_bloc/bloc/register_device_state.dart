part of 'register_device_bloc.dart';

sealed class RegisterDeviceState {
  String cid;

  RegisterDeviceState({required this.cid});
}

final class RegisterDeviceInitial extends RegisterDeviceState {
  RegisterDeviceInitial({super.cid = ''}) {
    print('RegisterDeviceInitial initial');
  }
}

final class RegisterDeviceInProgress extends RegisterDeviceState {
  RegisterDeviceInProgress({required super.cid}) {
    print('RegisterDeviceInProgress in progress');
  }
}
