import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/notificationScreen/notification_Screen.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/settings_screen/settings_screen.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/status/status_screen.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/walletScreen/wallet_screen.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/bottom_navigation_bar_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePageScreen> {
  int selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(children: [
            SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: screens()),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBarWidget(
                onTabTapped: onTabTapped,
                selectedIndex: selectedIndex,
              ),
            )
          ])),
    );
  }

  Widget screens() {
    switch (selectedIndex) {
      case 0:
        return const WalletScreen();
      case 1:
        return const StatusScreen();
      case 2:
        return const NotificationScreen();
      case 3:
        return const SettingsScreen();
      default:
        return Container();
    }
  }
}
