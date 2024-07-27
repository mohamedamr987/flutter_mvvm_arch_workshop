import 'package:flutter/material.dart';
import 'package:project/main.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  static show() {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => const LoadingIndicator(),
    );
  }

  static hide() {
    Navigator.of(navigatorKey.currentContext!).pop();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
