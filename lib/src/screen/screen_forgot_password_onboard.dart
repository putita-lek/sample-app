import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/forgot_password_bloc/bloc/forgot_password_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordOnboardScreen extends StatelessWidget {
  const ForgotPasswordOnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Text(
            'Forgot Password Onboard Screen',
            style: TextStyle(color: Colors.black),
          ),
          TextButton(
            child: Text('To Forgot Password Flow'),
            onPressed: () {
              context
                  .read<ForgotPasswordBloc>()
                  .add(UpdateForgotPasswordForm(email: 'putita.lek@gmail.com'));
            },
          ),
        ],
      ),
    );
  }
}
