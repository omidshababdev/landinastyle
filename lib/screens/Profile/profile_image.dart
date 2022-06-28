import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  final bool hasProfileImage = false;
  final String profileAvatar = 'assets/images/avatar.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(16, 0, 0, 0).withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 80,
            offset: Offset(0, 10),
          ),
        ],
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
            profileAvatar,
          ),
        ),
      ),
    );
  }
}
