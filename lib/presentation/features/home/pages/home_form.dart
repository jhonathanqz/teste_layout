import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:animated_card/animated_card.dart';
import 'package:teste_layout/presentation/features/home/pages/list_filter.dart';
import 'package:teste_layout/presentation/features/home/pages/list_products.dart';
import 'package:teste_layout/presentation/features/home/widgets/card_info_widget.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/style/app_text_styles.dart';
import 'package:teste_layout/presentation/shared/widgets/loading/color_loader.dart';

class HomeForm extends StatefulWidget {
  final bool hasNotification;
  const HomeForm({
    Key? key,
    this.hasNotification = true,
  }) : super(key: key);

  @override
  State<HomeForm> createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: widget.hasNotification,
            child: buildBoletoInfoWidget(),
          ),
          //buildTitle(),
          // buildLine(),
          AppSpacing.md,
          const ListFilter(),
          AppSpacing.md,
          ListProducts(),
        ],
      ),
    );
  }

  Stack buildBoletoInfoWidget() {
    return Stack(
      children: [
        Container(
          color: Color(0xff0053b9),
          height: 40,
          width: double.maxFinite,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AnimatedCard(
            direction: AnimatedCardDirection.top,
            child: CardInfoWidget(
              size: 5,
            ),
          ),
        ),
      ],
    );
  }

  Padding buildLine() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 24,
      ),
      child: Divider(
        thickness: 1,
        height: 1,
        color: Colors.green,
      ),
    );
  }
}
