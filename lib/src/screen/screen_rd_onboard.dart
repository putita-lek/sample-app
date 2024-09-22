import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterDeviceOnboardScreen extends StatefulWidget {
  const RegisterDeviceOnboardScreen({
    super.key,
  });

  @override
  State<RegisterDeviceOnboardScreen> createState() =>
      _RegisterDeviceOnboardScreenState();
}

class _RegisterDeviceOnboardScreenState
    extends State<RegisterDeviceOnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Register Device Onboard',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      bottomNavigationBar: TextButton(
        child: Text('To CID screen'),
        onPressed: () {
          print('to cid screen');
          context.go('/register-device/cid');
        },
      ),
    );
  }
}
