import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/deposit_bloc/bloc/deposit_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepositBloc, DepositState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Deposit Screen',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Amount: ${state.amount}',
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                child: Text('Deposit'),
                onPressed: () {
                  context
                      .read<DepositBloc>()
                      .add(InputDepositDetailEvent(amount: 100));
                },
              ),
            ],
          ),
          bottomNavigationBar: TextButton(
            child: Text('To Register Device'),
            onPressed: () {
              // context.go('/forgot-password');
              context.go('/register-device');
            },
          ),
        );
      },
    );
  }
}
