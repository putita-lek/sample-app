import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/register_device_bloc/bloc/register_device_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PINScreen extends StatelessWidget {
  const PINScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RegisterDeviceBloc, RegisterDeviceState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.green,
                child: Column(
                  children: [
                    Text('CID: ${state.cid}'),
                    TextButton(
                      onPressed: () {
                        print(
                            'cid: ${context.read<RegisterDeviceBloc>().state.cid}');
                        context.pop();
                      },
                      child: Text('pop'),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
