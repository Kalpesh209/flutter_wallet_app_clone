import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/card_design_widget.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/transaction_design_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topBar(),
          cardDesign(context),
          iconDesign(),
          transaction('Last Transaction', 'View All'),
        ]);
  }

  Widget topBar() {
    return ListTile(
      title: Text(
        "Wallet",
        style: GoogleFonts.poppins(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: const Color(0xff2F1155),
        ),
      ),
      trailing: const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
        ),
      ),
      subtitle: Text(
        "Active",
        style: GoogleFonts.poppins(
          fontSize: 18,
          color: const Color(0xff828282),
        ),
      ),
    );
  }
}
