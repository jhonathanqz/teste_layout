import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_layout/presentation/shared/style/app_text_styles.dart';

class TextFieldRounded extends StatelessWidget {
  const TextFieldRounded({
    required this.hintText,
    required this.labelText,
    required this.onChanged,
    required this.onSubmitted,
    required this.controller,
    required this.textInputType,
    this.autofocus = false,
    this.obscureText = false,
    this.enabled = true,
    this.errorText,
    this.focusNode,
    this.inputFormatters,
    Key? key,
  }) : super(key: key);

  final String? hintText;
  final String labelText;
  final Function(String) onChanged;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final TextInputType textInputType;
  final bool obscureText;
  final Function(String) onSubmitted;
  final FocusNode? focusNode;
  final bool? autofocus;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      onChanged: onChanged,
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText,
      autofocus: autofocus!,
      enabled: enabled,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.only(left: 20),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        labelText: labelText,
        labelStyle: AppTextStyles.labelStyle,
        hintStyle: const TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
        errorText: errorText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
