import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/features/home/widgets/card_products.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 18,
          itemBuilder: (context, index) {
            return CardProducts();
          }),
    );
  }
}
