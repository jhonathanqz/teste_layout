import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle title = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle titleBold = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle heading = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 25,
  );

  static const TextStyle titleButton = TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle textSnackInformation = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle labelStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle headingBold = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle simpleStyle = TextStyle(
    color: AppColors.white,
    fontSize: 14,
  );
}
