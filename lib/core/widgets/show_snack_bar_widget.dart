import 'package:flutter/material.dart';
import 'package:project/main.dart';

showSnackBar(String message) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
