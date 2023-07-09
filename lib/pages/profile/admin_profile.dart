
import 'package:flutter/material.dart';


import '../../constants/colors.dart';
import '../settings/custom_app_bar.dart';
import '../settings/navigate.dart';
import '../settings/profile_info.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 16),
              ProfileInfo(),
              SizedBox(height: 16),
              Divider(
                color:AppColors.dividerColor,
                height: 2.0,
              ),
              SettingsOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
