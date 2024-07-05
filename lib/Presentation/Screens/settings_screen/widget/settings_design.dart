import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/text_widget.dart';

class SettingsDesignWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;
  const SettingsDesignWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10, right: 0),
        height: size.height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(icon, color: AppColors.purple),
            SizedBox(width: size.width * 0.06),
            Expanded(
              child: TextWidget(
                color: AppColors.darkpurple0,
                fontSize: 18,
                text: title,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_right_outlined),
            SizedBox(width: size.width * 0.03)
          ],
        ),
      ),
    );
  }
}
