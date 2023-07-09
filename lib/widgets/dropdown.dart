import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({Key? key, required this.onItemSelected})
      : super(key: key);

  final Function(String) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        popupMenuTheme: PopupMenuThemeData(
          color: Colors.white, // Set the background color of the popup menu to transparent
          textStyle: const TextStyle(
            color: Colors.blue, // Set the font color to white
            fontSize: 16, // Set the font size
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0), // Set the border radius
          ),
        ),
      ),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert),
        offset: const Offset(0, 60), // Adjust the offset as needed
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'New Group',
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('New Group'),
            ),
          ),
          const PopupMenuItem<String>(
            value: 'New Broadcast',
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('New Broadcast'),
            ),
          ),
          const PopupMenuItem<String>(
            value: 'Search',
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('Search'),
            ),
          ),
          const PopupMenuItem<String>(
            value: 'Settings',
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('Settings'),
            ),
          ),
        ],
        onSelected: (String selectedItem) {
          onItemSelected(selectedItem);
          // Perform navigation based on the selected item
          if (selectedItem == 'New Group') {
            Navigator.pushNamed(context, '/new_group');
          } else if (selectedItem == 'New Broadcast') {
            Navigator.pushNamed(context, '/new_broadcast');
          } else if (selectedItem == 'Search') {
            Navigator.pushNamed(context, '/search');
          } else if (selectedItem == 'Settings') {
            Navigator.pushNamed(context, '/settings');
          }
        },
      ),
    );
  }
}
