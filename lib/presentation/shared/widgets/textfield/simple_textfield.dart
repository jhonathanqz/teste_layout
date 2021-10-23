import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_layout/presentation/shared/style/app_input_border.dart';
import 'package:teste_layout/presentation/shared/style/app_text_styles.dart';

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    Key? key,
    required this.textEditingController,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    this.focusNode,
    required this.onSubmitted,
    this.errorText,
    this.autofocus = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLenght = 200,
    this.inputFormatters,
    this.enabled = true,
  }) : super(key: key);
  final TextEditingController textEditingController;
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final TextInputType textInputType;
  final bool obscureText;
  final Function(String) onSubmitted;
  final FocusNode? focusNode;
  final bool? autofocus;
  final String? errorText;
  final int maxLines;
  final int maxLenght;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      obscureText: obscureText,
      autofocus: autofocus!,
      enabled: enabled,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        errorText: errorText,
        labelText: labelText,
        labelStyle: AppTextStyles.labelStyle,
        hintText: hintText,
        border: AppInputBorder.inputBorder,
        focusedBorder: AppInputBorder.focusedInputBorder,
      ),
    );
  }
}
