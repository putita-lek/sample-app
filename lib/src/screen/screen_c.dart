import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
