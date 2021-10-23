import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:teste_layout/app/cool_navigate.dart';
import 'package:teste_layout/app/name_route.dart';

part 'splash.store.g.dart';

class SplashStore = SplashBase with _$SplashStore;

abstract class SplashBase with Store {
  @action
  Future<void> dismissSplashScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    await CoolNavigate.removeUntil(context, NameRoute.login);
  }
}
