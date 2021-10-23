import 'package:flutter/material.dart';
import 'package:teste_layout/app/cool_navigate.dart';
import 'package:teste_layout/app/name_route.dart';
import 'package:teste_layout/presentation/shared/helpers/snack_helper.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/widgets/button/button_primary.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/rounded_textfield.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/simple_textfield.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/title_textfield.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController passConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleTextField(
          title: 'Nome',
          hintText: 'Digite seu nome',
          labelText: '',
          onChanged: (_) {},
          onSubmitted: (_) {},
          controller: nameController,
          textInputType: TextInputType.emailAddress,
        ),
        AppSpacing.sm,
        TitleTextField(
          title: 'Telefone',
          hintText: 'Digite seu telefone',
          labelText: '',
          onChanged: (_) {},
          onSubmitted: (_) {},
          controller: phoneController,
          textInputType: TextInputType.emailAddress,
        ),
        AppSpacing.sm,
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
          textInputType: TextInputType.emailAddress,
        ),
        AppSpacing.sm,
        TitleTextField(
          title: 'Confirme sua Senha',
          hintText: 'Digite novamente sua senha',
          labelText: '',
          onChanged: (_) {},
          onSubmitted: (_) {},
          controller: passConfirmController,
          textInputType: TextInputType.emailAddress,
        ),
        AppSpacing.sm,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonPrimary(
            onTap: () => _shouldRegister(context),
            title: 'Finalizar registro',
            colorButton: Colors.blue[900]!,
            colorText: Colors.white,
          ),
        ),
      ],
    );
  }

  void _shouldRegister(BuildContext context) {
    if (nameController.text.isEmpty ||
        phoneController.text.isEmpty ||
        mailController.text.isEmpty) {
      SnackHelper.showSnackInformation(
        'Existem campos em branco, por favor verifique.',
        Colors.red,
        context,
      );
      return;
    }
    if (passController.text != passConfirmController.text) {
      SnackHelper.showSnackDark(
        'Erro ao confirmar as senhas. Por favor verifique',
        Colors.yellow[700]!,
        context,
      );
      return;
    }
    SnackHelper.showSnackInformation(
      'Cadastro realizado com sucesso!',
      Colors.green,
      context,
    );
    CoolNavigate.removeUntil(context, NameRoute.login);
  }
}
