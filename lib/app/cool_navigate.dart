import 'package:flutter/material.dart';

class CoolNavigate {
  static Future<void> removeUntil(
      BuildContext context, String routeName) async {
    await Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }

  static Future<void> navigateTo(BuildContext context, String routeName) async {
    await Navigator.of(context).pushNamed(routeName);
  }

  static Future<void> replacement(
      BuildContext context, String routeName) async {
    await Navigator.of(context).pushReplacementNamed(routeName);
  }

  static void pop(BuildContext context, String routeName) {
    Navigator.of(context).pop();
  }
}
