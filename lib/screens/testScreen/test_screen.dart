import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static const routeName = '/test_screen';
  const TestScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Test screen'),
      ),
    );
  }
}
