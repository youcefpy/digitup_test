import 'package:flutter/material.dart';
import './screens/profile_screen.dart';
import './screens/personal_information_screen.dart';
import './screens/Identity.dart';
import './screens/chat_screen.dart';
import './screens/dashboard_screen.dart';
import './screens/send_screen.dart';
import 'screens/transfer_screen.dart';
import './screens/tabs_sceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(82, 193, 255, 1),
        canvasColor: Color.fromRGBO(255, 255, 229, 1),
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        ProfileScreen.ROUTE_PROFILE_SCREEN: (ctx) => ProfileScreen(),
        PersonalInformationScreen.ROUTE_PI: (ctx) =>
            PersonalInformationScreen(),
        IdentityScreen.ROUTE_IDENTITY: (ctx) => IdentityScreen(),
        ChatScreen.ROOT_CHAT: (ctx) => ChatScreen(),
        DashboardScreen.ROOT_DB: (ctx) => DashboardScreen(),
        SendScreen.ROOT_SEND: (ctx) => SendScreen(),
        TransferScreen.ROOT_TR: (ctx) => TransferScreen(),
      },
    );
  }
}
