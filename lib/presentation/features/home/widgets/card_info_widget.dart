import 'package:flutter/material.dart';

import 'package:teste_layout/presentation/shared/style/app_colors.dart';
import 'package:teste_layout/presentation/shared/style/app_images.dart';
import 'package:teste_layout/presentation/shared/style/app_input_border.dart';
import 'package:teste_layout/presentation/shared/style/app_text_styles.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/simple_textfield.dart';

class CardInfoWidget extends StatelessWidget {
  final int size;
  final TextEditingController searchController = TextEditingController();
  CardInfoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: searchController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: 'Pesquise pela descrição',
          labelStyle: AppTextStyles.labelStyle,
          hintText: '',
          border: AppInputBorder.inputBorder,
          focusedBorder: AppInputBorder.focusedInputBorderSearch,
          enabledBorder: AppInputBorder.focusedInputBorderSearch,
          suffixIcon: const Icon(Icons.search),
        ),
        onChanged: (_) {},
        onSubmitted: (_) {},
      ),
    );
  }
}
