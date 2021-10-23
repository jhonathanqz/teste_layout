import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/features/login/pages/login_form.dart';
import 'package:teste_layout/presentation/features/login/pages/register_form.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_images.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: AppEdgeInsets.sdAll,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.back6),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                children: [
                  AppSpacing.xl,
                  Container(
                    margin: AppEdgeInsets.vmd,
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.login),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  AppSpacing.xl,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        height: 1,
                        width: 60,
                      ),
                      AppSpacing.minW,
                      const Text(
                        'Registro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      AppSpacing.minW,
                      Container(
                        color: Colors.white,
                        height: 1,
                        width: 60,
                      ),
                    ],
                  ),
                  AppSpacing.xl,
                  //LoginForm(),
                  RegisterForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
