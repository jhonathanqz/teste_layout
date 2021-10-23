import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/shared/style/app_images.dart';

import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/widgets/button/round_button.dart';

class SocialButtonRow extends StatelessWidget {
  const SocialButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundButton(
          onTap: () {},
          buttonColor: Colors.blue,
          image: AppImages.facebook,
        ),
        AppSpacing.smW,
        RoundButton(
          onTap: () {},
          buttonColor: Colors.blue,
          image: AppImages.twitter,
        ),
        AppSpacing.smW,
        RoundButton(
          onTap: () {},
          buttonColor: Colors.white,
          image: AppImages.google,
        ),
        AppSpacing.smW,
        RoundButton(
          onTap: () {},
          buttonColor: Colors.black,
          image: AppImages.apple,
        ),
      ],
    );
  }
}
