import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/shared/style/app_colors.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_input_border.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.onTap,
    required this.buttonColor,
    required this.image,
    this.padding = AppEdgeInsets.sdMin,
  }) : super(key: key);
  final Function() onTap;
  final String image;
  final Color buttonColor;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 55,
        padding: AppEdgeInsets.sdAll,
        decoration: BoxDecoration(
          color: buttonColor,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
