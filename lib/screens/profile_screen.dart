import 'package:flutter/material.dart';
import '../widgets/profile.dart';
import './dashboard_screen.dart';

class ProfileScreen extends StatelessWidget {
  static const ROUTE_PROFILE_SCREEN = '/profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {
            Navigator.of(context).pushNamed(DashboardScreen.ROOT_DB),
          },
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(DashboardScreen.ROOT_DB, arguments: {});
            },
          ),
        ],
        flexibleSpace: Image(
          height: 113,
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
