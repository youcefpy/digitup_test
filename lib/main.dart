import 'package:flutter/material.dart';
import './screens/profile_screen.dart';
import './screens/personal_information_screen.dart';
import './screens/Identity.dart';
import './screens/chat_screen.dart';
import './screens/dashboard_screen.dart';
import './screens/send_screen.dart';
import 'screens/transfer_screen.dart';
import './screens/tabs_sceen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(82, 193, 255, 1),

        // canvasColor: Colors.white,
      ),
      // home: HomePage(),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        breakpointsLandscape: [
          const Breakpoint(start: 0, end: 1023, name: MOBILE),
          const Breakpoint(start: 1024, end: 1599, name: TABLET),
          const Breakpoint(start: 1600, end: double.infinity, name: DESKTOP),
        ],
        child: child!,
      ),
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
