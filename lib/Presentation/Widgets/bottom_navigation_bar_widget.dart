import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';
import 'package:iconly/iconly.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabTapped;

  const BottomNavigationBarWidget({
    required this.selectedIndex,
    required this.onTabTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: size.height * 0.04,
      ),
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: AppColors.darkpurple0,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconDesign(
            IconlyBold.wallet,
            0,
          ),
          iconDesign(
            IconlyBold.filter,
            1,
          ),
          iconDesign(
            IconlyBold.notification,
            2,
          ),
          iconDesign(
            IconlyBold.setting,
            3,
          ),
        ],
      ),
    );
  }

  Widget iconDesign(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: AnimatedOpacity(
        opacity: selectedIndex == index ? 1 : 0.2,
        duration: const Duration(milliseconds: 200),
        child: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
