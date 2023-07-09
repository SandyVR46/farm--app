import 'package:flutter/material.dart';

class UsrProfileInfo extends StatelessWidget {
  const UsrProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('lib/images/userpfp.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User 1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Ernakulam, Kerala',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
