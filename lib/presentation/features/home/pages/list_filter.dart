import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/features/home/widgets/card_filter.dart';
import 'package:teste_layout/presentation/shared/style/app_edge_insets.dart';

class ListFilter extends StatelessWidget {
  const ListFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const Padding(
            padding: AppEdgeInsets.hsd,
            child: CardFilter(
              imageUrl: 'https://cdn-icons-png.flaticon.com/512/37/37942.png',
              text: 'Jogos',
            ),
          );
        },
      ),
    );
  }
}
