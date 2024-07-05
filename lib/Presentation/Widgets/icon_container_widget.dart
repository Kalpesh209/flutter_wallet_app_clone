import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';

class IconContainerWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const IconContainerWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(0, 3),
                      blurRadius: 0.7)
                ]),
            child: Icon(
              icon,
              size: 30,
              color: AppColors.darkpurple2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: AppColors.grey,
            ),
          )
        ],
      ),
    );
  }
}
