
import 'package:flutter/material.dart';
import 'navigationoption.dart';

class UsrSettingsOptions extends StatelessWidget {
  const UsrSettingsOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        OptionItem(
          icon: Icons.account_circle,
          title: 'Account',
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const AccountSettingsPage(),
            //   ),
            // );
          },
        ),
        OptionItem(
          icon: Icons.notifications,
          title: 'Notifications',
          onPressed: () {
            // Handle notifications option
            //  Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const NotificationSettingsPage(),
            //   ),
            // );
          },
        ),
        OptionItem(
          icon: Icons.production_quantity_limits,
          title: 'Orders',
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ChatSettingsPage(),
            //   ),
            // );
          },
        ),
        OptionItem(
          icon: Icons.storage,
          title: 'In Demand',
          onPressed: () {
            // Handle data and storage option
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const DataStorage(),
            //   ),
            // );
          },
        ),
        
      ],
    );
  }
}
