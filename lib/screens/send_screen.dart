import 'package:flutter/material.dart';
import './dashboard_screen.dart';

class SendScreen extends StatelessWidget {
  static const ROOT_SEND = '/send';
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
          // color: Colors.transparent,
          height: 113,
          image: AssetImage('assets/images/background_image_appbar.png'),
          fit: BoxFit.cover,
        ),
        title: Text(
          'Send',
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
        child: Text('Send Screen In build'),
      ),
    );
  }
}
