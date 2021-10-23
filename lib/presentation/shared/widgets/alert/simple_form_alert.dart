import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/shared/style/app_colors.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_size.dart';
import 'package:teste_layout/presentation/shared/widgets/button/button_primary.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/simple_textfield.dart';

class SimpleFormAlert extends StatelessWidget {
  final String title;
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final Function() next;
  final TextEditingController textEditingController;
  final bool obscureText;
  final TextInputType textInputType;
  final String image;

  const SimpleFormAlert({
    Key? key,
    required this.title,
    required this.labelText,
    required this.hintText,
    required this.image,
    required this.onChanged,
    required this.onSubmitted,
    required this.next,
    required this.textEditingController,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      backgroundColor: AppColors.white,
      title: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.white,
                    size: AppSize.xlSize,
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          Container(
            padding: AppEdgeInsets.txl,
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: AppSize.plusSize,
                    width: AppSize.plusSize,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: AppEdgeInsets.vsdm,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: AppEdgeInsets.tmd,
                  child: SimpleTextField(
                    labelText: labelText,
                    hintText: hintText,
                    onChanged: onChanged,
                    textEditingController: textEditingController,
                    obscureText: obscureText,
                    textInputType: textInputType,
                    onSubmitted: onSubmitted,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      content: Container(
        padding: AppEdgeInsets.bmin,
        child: ButtonPrimary(
          title: 'Continuar',
          onTap: next,
        ),
      ),
    );
  }
}
