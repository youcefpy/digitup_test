import 'package:flutter/material.dart';
import './screens/profile_screen.dart';
import './screens/personal_information_screen.dart';
import './screens/Identity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: ProfileScreen.ROUTE_PROFILE_SCREEN,
      routes: {
        ProfileScreen.ROUTE_PROFILE_SCREEN: (ctx) => ProfileScreen(),
        PersonalInformationScreen.ROUTE_PI: (ctx) =>
            PersonalInformationScreen(),
        IdentityScreen.ROUTE_IDENTITY: (ctx) => IdentityScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
