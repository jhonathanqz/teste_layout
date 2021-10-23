import 'package:flutter/material.dart';
import 'package:teste_layout/app/name_route.dart';
import 'package:teste_layout/presentation/features/home/pages/home_page.dart';
import 'package:teste_layout/presentation/features/login/pages/login_page.dart';
import 'package:teste_layout/presentation/features/login/pages/register_page.dart';
import 'package:teste_layout/presentation/features/splash/pages/splash_screen_page.dart';

class AppModule {
  static String get initialRoute => NameRoute.splash;

  static Map<String, Widget Function(BuildContext)> routes = {
    NameRoute.splash: (_) => const SplashScreenPage(),
    NameRoute.settings: (_) => Container(),
    NameRoute.login: (_) => LoginPage(),
    NameRoute.register: (_) => RegisterPage(),
    NameRoute.home: (_) => HomePage(),
  };
}
