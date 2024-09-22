import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          'Login Screen',
          style: TextStyle(color: Colors.black),
        ),
      ]),
      bottomNavigationBar: TextButton(
        child: Text('Login'),
        onPressed: () {
          // context.go('/forgot-password');
          context.go('/register-device');
        },
      ),
    );
  }
}
