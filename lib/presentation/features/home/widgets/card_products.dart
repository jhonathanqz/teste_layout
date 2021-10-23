import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';
import 'package:teste_layout/presentation/shared/style/app_spacing.dart';
import 'package:teste_layout/presentation/shared/style/app_text_styles.dart';

class CardProducts extends StatelessWidget {
  const CardProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppEdgeInsets.sdAll,
      margin: AppEdgeInsets.sdAll,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 70,
              width: 70,
              child: CachedNetworkImage(
                imageUrl:
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/3a5a25ec-b454-43fd-bb07-4c7fc22610af/dbwi9y2-b955baac-6978-471d-9490-229304bcb5ee.png',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: AppEdgeInsets.hsd,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Need for Speed',
                    style: AppTextStyles.titleBold,
                  ),
                  AppSpacing.min,
                  Text(
                    'jogo para playstation 2\nCategoria: Jogos de corrida',
                    style: AppTextStyles.title.copyWith(fontSize: 15),
                  ),
                  AppSpacing.sm,
                  Text(
                    'R\$ 25,67',
                    style: AppTextStyles.titleBold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
