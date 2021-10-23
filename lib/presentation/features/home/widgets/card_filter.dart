import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/shared/widgets/loading/color_loader.dart';

class CardFilter extends StatelessWidget {
  const CardFilter({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: CachedNetworkImage(
              placeholder: (context, imageUrl) => const ColorLoader(),
              imageUrl: imageUrl,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
