import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/screens/chat_screen.dart';
import '/screens/dashboard_screen.dart';
import '/screens/profile_screen.dart';
import '/screens/send_screen.dart';
import '/screens/transfer_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> with TickerProviderStateMixin {
  int _selectedPageIndex = 2;
  Widget currentScreen = DashboardScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> _pages = [
    SendScreen(),
    TransferScreen(),
    DashboardScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  late AnimationController _sendController;
  late AnimationController _transferController;
  late AnimationController _dashboardController;
  late AnimationController _chatController;
  late AnimationController _profileController;

  late Animation<double> _sendAnimation;
  late Animation<double> _transferAnimation;
  late Animation<double> _dashboardAnimation;
  late Animation<double> _chatAnimation;
  late Animation<double> _profileAnimation;

  @override
  void initState() {
    super.initState();
    _sendController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _transferController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _dashboardController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _chatController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _profileController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));

    _sendAnimation =
        Tween<double>(begin: 0.0, end: -10.0).animate(_sendController);
    _transferAnimation =
        Tween<double>(begin: 0.0, end: -10.0).animate(_transferController);
    _dashboardAnimation =
        Tween<double>(begin: 0.0, end: -10.0).animate(_dashboardController);
    _chatAnimation =
        Tween<double>(begin: 0.0, end: -10.0).animate(_chatController);
    _profileAnimation =
        Tween<double>(begin: 0.0, end: -10.0).animate(_profileController);
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      currentScreen = _pages[index];
      _animateButton(index);
    });
  }

  void _animateButton(int index) {
    _sendController.reset();
    _transferController.reset();
    _dashboardController.reset();
    _chatController.reset();
    _profileController.reset();

    if (index == 0) _sendController.forward();
    if (index == 1) _transferController.forward();
    if (index == 2) _dashboardController.forward();
    if (index == 3) _chatController.forward();
    if (index == 4) _profileController.forward();
  }

  @override
  void dispose() {
    _sendController.dispose();
    _transferController.dispose();
    _dashboardController.dispose();
    _chatController.dispose();
    _profileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BottomAppBar(
              color: Theme.of(context).primaryColor,
              height: 85,
              child: Row(
                children: [
                  Flexible(
                    child: _buildAnimatedTabItem(
                        0,
                        _sendController,
                        _sendAnimation,
                        'assets/icons/bottom_bar/send.svg',
                        'Send'),
                  ),
                  Flexible(
                    child: _buildAnimatedTabItem(
                        1,
                        _transferController,
                        _transferAnimation,
                        'assets/icons/bottom_bar/transfert.svg',
                        'Transfer'),
                  ),
                  Flexible(
                    child: _buildAnimatedTabItem(
                        2,
                        _dashboardController,
                        _dashboardAnimation,
                        'assets/icons/bottom_bar/dashboard.svg',
                        'Dashboard'),
                  ),
                  Flexible(
                    child: _buildAnimatedTabItem(
                        3,
                        _chatController,
                        _chatAnimation,
                        'assets/icons/bottom_bar/chat.svg',
                        'Chat'),
                  ),
                  Flexible(
                    child: _buildAnimatedTabItem(
                        4,
                        _profileController,
                        _profileAnimation,
                        'assets/icons/bottom_bar/profile.svg',
                        'profile'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedTabItem(int index, AnimationController controller,
      Animation<double> animation, String iconPath, String label) {
    final size = MediaQuery.of(context).size;
    final double iconSize = size.shortestSide * 0.08;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: MaterialButton(
            onPressed: () => _selectedPage(index),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  iconPath,
                  height: iconSize,
                  width: iconSize,
                  color: _selectedPageIndex == index
                      ? Color.fromRGBO(19, 59, 183, 1)
                      : Colors.white,
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Text(
                    label,
                    maxLines: 1,
                    style: TextStyle(
                      color: _selectedPageIndex == index
                          ? Color.fromRGBO(19, 59, 183, 1)
                          : Colors.white,
                      fontSize: 10,
                      fontWeight: _selectedPageIndex == index
                          ? FontWeight.w700
                          : FontWeight.w400,
                      fontFamily: 'SpaceGrotesk',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
