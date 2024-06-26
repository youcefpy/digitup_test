import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/screens/chat_screen.dart';
import '/screens/dashboard_screen.dart';
import '/screens/profile_screen.dart';
import '/screens/send_screen.dart';
import '/screens/transfer_screen.dart';
import '../navBar costomize/navbar_painter.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> with TickerProviderStateMixin {
  int _selectedPageIndex = 2;
  Widget currentScreen = DashboardScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  double _bottomAppBarHeight = 81.5;

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

  double height_item_gap = -10;

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
    _profileAnimation = Tween<double>(begin: 0.0, end: height_item_gap)
        .animate(_profileController);
  }

  // list of global keys to get the positions of MaterialButton
  final List<GlobalKey> _buttonKeys = List.generate(5, (index) => GlobalKey());

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
    // double width_screen = MediaQuery.of(context).size.width;
    // double height_screen = MediaQuery.of(context).size.height;

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        height: _bottomAppBarHeight,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomPaint(
              size:
                  Size(MediaQuery.of(context).size.width, _bottomAppBarHeight),
              painter: NavBarPainter(_selectedPageIndex, orientation),
            ),
            BottomAppBar(
              color: Theme.of(context).primaryColor,
              height: _bottomAppBarHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedTabItem(int index, AnimationController controller,
      Animation<double> animation, String iconPath, String label) {
    // size of the width and height of the page
    final size = MediaQuery.of(context).size;

    final double iconSize = size.shortestSide * 0.07;
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
                Container(
                  key: _buttonKeys[index],
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  width: double.infinity,
                  child: SvgPicture.asset(
                    iconPath,
                    height: iconSize,
                    width: iconSize,
                    color: _selectedPageIndex == index
                        ? Color.fromRGBO(19, 59, 183, 1)
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
