import 'package:flutter/material.dart';
import './profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  static const ROOT_DB = '/dashboaad';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        flexibleSpace: Image(
          height: 113,
          image: AssetImage('assets/images/background_image_appbar.png'),
          fit: BoxFit.cover,
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 350,
              child: Text(
                  'Dashborad Screen In build, but You can check your profile from the dashboard'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                    ProfileScreen.ROUTE_PROFILE_SCREEN,
                    arguments: {});
              },
              child: Text('Check Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
