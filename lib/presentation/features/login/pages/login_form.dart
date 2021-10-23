import 'package:flutter/material.dart';
import 'package:teste_layout/app/cool_navigate.dart';
import 'package:teste_layout/app/name_route.dart';
import 'package:teste_layout/presentation/features/login/widgets/social_button_row.dart';
import 'package:teste_layout/presentation/shared/helpers/snack_helper.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_images.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/widgets/button/rd_button.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/rounded_textfield.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/title_textfield.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppEdgeInsets.sdAll,
      child: Column(
        children: [
          TitleTextField(
            title: 'Email',
            hintText: 'Digite seu email',
            labelText: '',
            onChanged: (_) {},
            onSubmitted: (_) {},
            controller: mailController,
            textInputType: TextInputType.emailAddress,
          ),
          AppSpacing.sm,
          TitleTextField(
            title: 'Senha',
            hintText: 'Digite sua senha',
            labelText: '',
            onChanged: (_) {},
            onSubmitted: (_) {},
            controller: passController,
            textInputType: TextInputType.number,
          ),
          AppSpacing.xl,
          Padding(
            padding: AppEdgeInsets.hmd,
            child: RDButton(
              buttonName: 'Login',
              color: Colors.blue[900]!,
              onPressed: () => _handleLogin(context),
            ),
          ),
          TextButton(
            onPressed: () {
              CoolNavigate.navigateTo(context, NameRoute.register);
            },
            child: RichText(
              text: const TextSpan(
                text: 'cadastre-se agora ',
                children: [
                  TextSpan(
                    text: 'clicando aqui',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppSpacing.xl,
          AppSpacing.xl,
          AppSpacing.xl,
          const Text(
            'ou entre com:',
            style: TextStyle(color: Colors.white),
          ),
          AppSpacing.md,
          const Align(
            alignment: Alignment.bottomCenter,
            child: SocialButtonRow(),
          ),
        ],
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    CoolNavigate.removeUntil(context, NameRoute.home);
  }
}
