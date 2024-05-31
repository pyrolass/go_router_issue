import 'package:flutter/material.dart';
import 'package:flutter_template/screens/testScreen/test_screen.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  static const routeName = '/screen_a';

  const ScreenA({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.push(TestScreen.routeName);
          },
          child: const Text('Go to test screen'),
        ),
      ),
    );
  }
}
