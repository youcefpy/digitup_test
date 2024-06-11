import 'package:flutter/material.dart';

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
        title: Text("My identity"),
      ),
      body: Center(
        child: Text('My Identity'),
      ),
    );
  }
}
