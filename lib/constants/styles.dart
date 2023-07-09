import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const TextStyle descriptionTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: AppColors.textColor,
  );

  static const TextStyle skipGetStyles = TextStyle(
    fontSize: 15,
    color: AppColors.textColor,
  );

  static const TextStyle authTextStyles = TextStyle(
    fontSize: 15,
    letterSpacing: 5.0,
    color: AppColors.textColor,
  );

  static const TextStyle authTitleText = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle authDescText = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(350, 50),
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
  );

  static ButtonStyle getButtonStyle(bool isActive) {
    Color backgroundColor = isActive ? Colors.blue : Colors.white;
    Color fontColor = isActive ? Colors.white : Colors.blue;

    return ElevatedButton.styleFrom(
      foregroundColor: fontColor,
      backgroundColor: backgroundColor,
    );
  }

  static const TextStyle chaSttingsTextStyle = TextStyle(
    fontSize: 18,
    color: AppColors.settingsTextColor,
  );

  static const TextStyle fontBlueTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle fontBlackTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle appFontTextStyle = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle appSubGreyTextStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle appSubBlueTextStyle = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle fontSubTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.blue,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle accDesStngsTextStyle = TextStyle(
    fontSize: 12,
    color: AppColors.settingsTextColor,
  );

  static const TextStyle descSettingsTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.descSettTextColor,
  );
  static const TextStyle groupDescTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.groupDescriptionShareColor,
    
  );

  static const TextStyle gropDesBolTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
}
