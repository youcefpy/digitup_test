import 'package:flutter/material.dart';
import './dashboard_screen.dart';

class IdentityScreen extends StatefulWidget {
  static const ROUTE_IDENTITY = '/identity';

  @override
  State<IdentityScreen> createState() => _IdentityScreenState();
}

class _IdentityScreenState extends State<IdentityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Identity',
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
        child: Text('My Identity'),
      ),
    );
  }
}
