import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_input_border.dart';

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppEdgeInsets.mmAll,
        width: MediaQuery.of(context).size.width,
        decoration: AppInputBorder.outlineBorder,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
