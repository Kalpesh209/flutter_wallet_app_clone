import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/text_widget.dart';

class NotificationCardWidget extends StatelessWidget {
  final CustomPainter painter;
  final String time;
  final String title;
  final String subtitle;
  final Color borderColor;
  const NotificationCardWidget({
    super.key,
    required this.painter,
    required this.time,
    required this.title,
    required this.subtitle,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(right: 20, left: 10, top: 10),
      height: size.height * 0.16,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                color: Colors.grey.shade300,
                blurRadius: 14,
                spreadRadius: 1),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextWidget(
            text: time,
            color: AppColors.grey,
            fontSize: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: title,
                color: AppColors.pureBlack,
                fontSize: 15,
              ),
              Container(
                height: size.height * 0.04,
                width: size.width * 0.08,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor, width: 3),
                  shape: BoxShape.circle,
                ),
                child: CustomPaint(
                  painter: painter,
                ),
              ),
            ],
          ),
          TextWidget(
            color: AppColors.grey,
            fontSize: 16,
            text: subtitle,
          )
        ],
      ),
    );
  }
}
