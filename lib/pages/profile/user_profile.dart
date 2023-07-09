
import 'package:flutter/material.dart';
import 'package:groceryapp/pages/settings/usrnavigate.dart';
import 'package:groceryapp/pages/settings/usrprofile_info.dart';
import '../../constants/colors.dart';
import '../settings/usrcustom_app_bar copy.dart';

class UsrSettingsScreen extends StatelessWidget {
  const UsrSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              UsrCustomAppBar(),
              SizedBox(height: 16),
              UsrProfileInfo(),
              SizedBox(height: 16),
              Divider(
                color:AppColors.dividerColor,
                height: 2.0,
              ),
              UsrSettingsOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
