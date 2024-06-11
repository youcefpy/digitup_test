import 'package:flutter/material.dart';
import '../widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  static const ROUTE_PROFILE_SCREEN = '/profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('assets/images/background_image_appbar.png'),
          fit: BoxFit.cover,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Profile(),
    );
  }
}
