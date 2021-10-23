import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/widgets/textfield/simple_textfield.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    Key? key,
    required this.title,
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    required this.onSubmitted,
    required this.textInputType,
    required this.controller,
    this.inputFormatters,
    this.maxLenght = 200,
    this.maxLines = 1,
    this.focusNode,
    this.autoFocus = false,
    this.enabled = true,
  }) : super(key: key);
  final String title;
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final TextInputType textInputType;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final int maxLenght;
  final int maxLines;
  final FocusNode? focusNode;
  final bool autoFocus;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppEdgeInsets.hsd,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          AppSpacing.sm,
          SimpleTextField(
            textEditingController: controller,
            autofocus: autoFocus,
            focusNode: focusNode,
            onChanged: onChanged,
            labelText: labelText,
            hintText: hintText,
            textInputType: textInputType,
            onSubmitted: onSubmitted,
            inputFormatters: inputFormatters,
            maxLenght: maxLenght,
            maxLines: maxLines,
            enabled: enabled,
          ),
        ],
      ),
    );
  }
}
