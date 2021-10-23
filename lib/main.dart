import 'package:flutter/material.dart';
import 'package:teste_layout/app/app.dart';
import 'package:teste_layout/app/injection_container.dart';

void main() {
  setupDependencies();
  runApp(
    const App(),
  );
}
