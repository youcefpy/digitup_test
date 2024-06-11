import 'package:flutter/material.dart';
import './dashboard_screen.dart';

class TransferScreen extends StatelessWidget {
  static const ROOT_TR = '/transfer';
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Transfer',
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
        child: Text('Transfer Screen In build'),
      ),
    );
  }
}
