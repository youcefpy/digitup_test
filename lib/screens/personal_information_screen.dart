import 'package:flutter/material.dart';

class PersonalInformationScreen extends StatefulWidget {
  static const ROUTE_PI = '/personal-information';

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("personal information"),
      ),
      body: Center(
        child: Text('personal Inforamtion'),
      ),
    );
  }
}
