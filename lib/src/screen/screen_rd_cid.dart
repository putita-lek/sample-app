import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/register_device_bloc/bloc/register_device_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CIDScreen extends StatelessWidget {
  const CIDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('CID Screen'),
          TextButton(
            onPressed: () {
              context
                  .read<RegisterDeviceBloc>()
                  .add(UpdateCIDRegisterDeviceEvent());
            },
            child: Text('Update CID'),
          ),
          TextButton(
            onPressed: () {
              context.go('/register-device/pin');
            },
            child: Text('To PIN screen'),
          ),
        ],
      ),
    );
  }
}
