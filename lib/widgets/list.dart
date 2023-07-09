import 'package:flutter/material.dart';


class List extends StatelessWidget {
  const List({super.key, required this.image, required this.name, required this.lastMessage, required this.ontap});

  final String image;
  final String name;
  final String lastMessage;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
        return ListTile(
          leading: CircleAvatar(
            radius: 23.0,
            backgroundImage: AssetImage(image),
          ),
          title: Text(name),
          subtitle: Text(lastMessage),
          onTap: () {
            // Handle chat item tap
            ontap();
          },
        );
  }
 
  }

