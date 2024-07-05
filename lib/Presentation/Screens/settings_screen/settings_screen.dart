import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/settings_screen/widget/settings_design.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/text_widget.dart';
import 'package:iconly/iconly.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInCubic),
    );
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Opacity(
          opacity: animation.value,
          child: Center(
            child: Column(children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              TextWidget(
                color: AppColors.darkpurple2,
                fontSize: 20,
                text: "Settings",
              ),
              SettingsDesignWidget(
                icon: IconlyBold.profile,
                title: 'Profile',
                onTap: () {},
              ),
              SettingsDesignWidget(
                icon: IconlyBold.notification,
                title: 'Notifications',
                onTap: () {},
              ),
              SettingsDesignWidget(
                icon: IconlyBold.wallet,
                title: 'Your Wallet',
                onTap: () {},
              ),
              SettingsDesignWidget(
                icon: IconlyBold.lock,
                title: 'Login Settings',
                onTap: () {},
              ),
              SettingsDesignWidget(
                icon: IconlyBold.calling,
                title: 'Service Center',
                onTap: () {},
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconlyBold.logout,
                    color: AppColors.purple,
                    size: size.height * 0.05,
                  )),
              TextWidget(
                color: AppColors.purple,
                fontSize: 20,
                text: 'Log Out',
              )
            ]),
          ),
        );
      },
    );
  }
}
