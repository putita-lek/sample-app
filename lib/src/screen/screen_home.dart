import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/forgot_password_bloc/bloc/forgot_password_bloc.dart';
import 'package:flutter_application_1/src/bloc/register_device_bloc/bloc/register_device_bloc.dart';
import 'package:flutter_application_1/src/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {required this.navigationShell, required this.children, super.key});

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: widget.children.mapIndexed(
          (int index, Widget navigator) {
            if (index == 0) {
              return Visibility(
                visible: index == widget.navigationShell.currentIndex,
                maintainState: true,
                child: BlocProvider(
                  create: (context) => RegisterDeviceBloc(),
                  child: navigator,
                ),
              );
            }

            return Visibility(
              visible: index == widget.navigationShell.currentIndex,
              maintainState: true,
              child: BlocProvider(
                create: (context) => ForgotPasswordBloc(),
                child: navigator,
              ),
            );
          },
        ).toList()),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 236, 235, 223),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                child: Text('To Register Device Flow'),
                onPressed: () {
                  // index = 0 is for register device flow
                  widget.navigationShell.goBranch(
                    0,
                    initialLocation: 0 == widget.navigationShell.currentIndex,
                  );
                },
              ),
              TextButton(
                child: Text('To Forgot Password Flow'),
                onPressed: () {
                  // index = 1 is for reset password flow
                  widget.navigationShell.goBranch(
                    1,
                    initialLocation: 1 == widget.navigationShell.currentIndex,
                  );
                },
              ),
              TextButton(
                child: Text('To Deposit Flow'),
                onPressed: () {
                  context.go('/deposit');
                },
              ),
              TextButton(
                child: Text('To Setting Flow'),
                onPressed: () {
                  context.go('/setting');
                },
              ),
            ],
          ),
        ));
  }
}
