
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';

class PinCodeField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onCompleted;

  const PinCodeField({super.key, 
    required this.onChanged,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        textStyle: TextStyle(color: AppColors.textColor),
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 60,
          fieldWidth: 60,
          activeColor: AppColors.buttonActiveColor,
          inactiveColor: AppColors.buttonActiveColor,
          selectedColor: AppColors.buttonActiveColor,
        ),
        onChanged: onChanged,
        onCompleted: onCompleted,
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AuthButton({
    super.key, 
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppTextStyles.elevatedButtonStyle, 
                child: Text(
          text,
          style: AppTextStyles.authTextStyles,
        ),
        ),

    );
  }
}
