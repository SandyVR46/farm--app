import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dotColor,
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Spacer(),
          Icon(
            Icons.grass_outlined,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
