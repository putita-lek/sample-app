import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/deposit_bloc/bloc/deposit_bloc.dart';
import 'package:flutter_application_1/src/bloc/forgot_password_bloc/bloc/forgot_password_bloc.dart';
import 'package:flutter_application_1/src/bloc/register_device_bloc/bloc/register_device_bloc.dart';
import 'package:flutter_application_1/src/router.dart';
import 'package:flutter_application_1/src/screen/screen_deposit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

class AuthHomeScreen extends StatefulWidget {
  const AuthHomeScreen(
      {required this.navigationShell, required this.children, super.key});

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  State<AuthHomeScreen> createState() => _AuthHomeScreenState();
}

class _AuthHomeScreenState extends State<AuthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DepositBloc(),
      child: DepositScreen(),
    );
  }
}
