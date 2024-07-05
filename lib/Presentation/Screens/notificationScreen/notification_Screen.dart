import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/notificationScreen/widget/icon_custom_paint.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/notificationScreen/widget/notification_card.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/text_button_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
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
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Opacity(
          opacity: animation.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextButtonWidget(
                  text: 'Notifications',
                  color: AppColors.purple,
                ),
              ),
              TextButtonWidget(
                text: 'New',
                color: AppColors.pureBlack,
              ),
              NotificationCardWidget(
                painter: VPainterWidget(color: AppColors.iconGreen, shape: 10),
                time: '29 June 2021, 7.14 PM',
                title: 'You received Rp 100.000 from\nAlexandr Gibson Jogja',
                subtitle: '‘Pay debt’',
                borderColor: AppColors.iconGreen,
              ),
              NotificationCardWidget(
                painter: VPainterWidget(color: AppColors.iconRed, shape: 18),
                time: '29 June 2021, 9.02 AM',
                title: 'You spent Rp 32.000 for Coffe\nCetar back Tugu Sentral',
                subtitle: '‘Pay debt’',
                borderColor: AppColors.iconRed,
              ),
              TextButtonWidget(
                text: 'Recent',
                color: AppColors.pureBlack,
              ),
              NotificationCardWidget(
                painter: VPainterWidget(color: AppColors.iconRed, shape: 18),
                time: '29 June 2021, 7.14 PM',
                title: 'You received Rp 100.000 from\nAlexandr Gibson Jogja',
                subtitle: '‘Pay debt’',
                borderColor: AppColors.iconRed,
              ),
              NotificationCardWidget(
                painter: VPainterWidget(color: AppColors.iconGreen, shape: 10),
                time: '29 June 2021, 7.14 PM',
                title: 'You received Rp 100.000 from\nAlexandr Gibson Jogja',
                subtitle: '‘Pay debt’',
                borderColor: AppColors.iconGreen,
              ),
              NotificationCardWidget(
                painter: VPainterWidget(color: AppColors.iconGreen, shape: 12),
                time: '29 June 2021, 7.14 PM',
                title: 'You received Rp 100.000 from\nAlexandr Gibson Jogja',
                subtitle: '‘Pay debt’',
                borderColor: AppColors.iconGreen,
              ),
            ],
          ),
        );
      },
    );
  }
}
