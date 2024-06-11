import 'package:flutter/material.dart';

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
        child: Container(
          // padding: EdgeInsets.only(left: 120),

          child: Text(
            'Dashborad Screen In build Hello wolrd',
          ),
        ),
      ),
    );
  }
}
