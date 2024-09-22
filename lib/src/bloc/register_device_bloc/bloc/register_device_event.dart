part of 'register_device_bloc.dart';

@immutable
sealed class RegisterDeviceEvent {}

class UpdateCIDRegisterDeviceEvent extends RegisterDeviceEvent {}
