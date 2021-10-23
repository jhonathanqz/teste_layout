import 'package:flutter/material.dart';

class AppEdgeInsets {
  static const EdgeInsets minAll = EdgeInsets.all(2);

  static const EdgeInsets sdMin = EdgeInsets.all(5);

  static const EdgeInsets sdAll = EdgeInsets.all(10);

  static const EdgeInsets mmAll = EdgeInsets.all(15);
  static const EdgeInsets intAll = EdgeInsets.all(20);

  static const EdgeInsets mdAll = EdgeInsets.all(24);

  static const EdgeInsets xlAll = EdgeInsets.all(30);

  static const EdgeInsets headerSymmetric = EdgeInsets.symmetric(
    vertical: 30,
    horizontal: 15,
  );

  static const EdgeInsets vmin = EdgeInsets.symmetric(vertical: 5);

  static const EdgeInsets vsd = EdgeInsets.symmetric(vertical: 10);

  static const EdgeInsets vsdm = EdgeInsets.symmetric(vertical: 15);

  static const EdgeInsets vmd = EdgeInsets.symmetric(vertical: 20);

  static const EdgeInsets hsd = EdgeInsets.symmetric(horizontal: 10);

  static const EdgeInsets hmd = EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets hxl = EdgeInsets.symmetric(horizontal: 30);

  static const EdgeInsets sdSymetric = EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 10,
  );

  static const EdgeInsets cardSymetric = EdgeInsets.symmetric(
    vertical: 5,
    horizontal: 10,
  );

  static const EdgeInsets tsd = EdgeInsets.only(top: 10);

  static const EdgeInsets tmd = EdgeInsets.only(top: 15);

  static const EdgeInsets txl = EdgeInsets.only(top: 20);

  static const EdgeInsets bmin = EdgeInsets.only(bottom: 5);

  static const EdgeInsets bsd = EdgeInsets.only(bottom: 10);

  static const EdgeInsets bmd = EdgeInsets.only(bottom: 15);

  static const EdgeInsets bxl = EdgeInsets.only(bottom: 20);

  static const EdgeInsets lsd = EdgeInsets.only(left: 10);

  static const EdgeInsets onlyProduct = EdgeInsets.only(
    top: 15,
    bottom: 3,
  );

  static const EdgeInsets onlyObsCard = EdgeInsets.only(
    bottom: 10,
    left: 15,
    right: 10,
  );

  static const EdgeInsets priceCard = EdgeInsets.only(
    bottom: 10,
    right: 10,
  );

  static const EdgeInsets onlyAlert = EdgeInsets.only(
    top: 30,
    bottom: 20,
  );
}