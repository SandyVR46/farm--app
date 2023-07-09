import 'package:flutter/material.dart';

import '../constants/decorations.dart';


class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -200,
      left: -200,
      right: -200,
      child: Container(
        height: 410,
        decoration: CustomDecorations.circle,
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 200),
            child: Image.asset(
              'lib/images/logo.png',
              height: 150,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
