import 'package:flutter/material.dart';

class ChatPopupMenu extends StatelessWidget {
  final Function(String) onItemSelected;

  const ChatPopupMenu({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: "view_contacts",
          child: Text("View Contacts"),
        ),
        const PopupMenuItem(
          value: "media_link",
          child: Text("Media Link"),
        ),
        const PopupMenuItem(
          value: "search",
          child: Text("Search"),
        ),
        const PopupMenuItem(
          value: "wallpaper",
          child: Text("Wallpaper"),
        ),
        const PopupMenuItem(
          value: "more",
          child: Text("More"),
        ),
      ],
      onSelected: (value) => onItemSelected(value as String),
      icon: Icon(Icons.more_vert, color: Colors.grey.shade700),
    );
  }
}
