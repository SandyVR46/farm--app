import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const OptionItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.green,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: AppColors.settingsArrow, // Customize the color of the arrow icon
      ),
      onTap: onPressed,
    );
  }
}
