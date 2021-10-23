import 'package:flutter/material.dart';
import 'package:teste_layout/app/app_module.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste SQF Lite',
      initialRoute: AppModule.initialRoute,
      routes: AppModule.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
