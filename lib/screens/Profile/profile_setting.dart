import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Ionicons.close_outline,
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
