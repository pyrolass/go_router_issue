import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  static const routeName = '/screen_b';
  const ScreenB({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('screen B'),
      ),
    );
  }
}
