import 'package:flutter/material.dart';


import 'colors.dart';

class CustomDecorations {
  static BoxDecoration dotIndicatorDecoration(bool isActive) {
    return BoxDecoration(
      color:
          isActive ? AppColors.dotColor : AppColors.dotColor.withOpacity(0.7),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    );
  }

  static const BoxDecoration circle = BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white,
  );


}
