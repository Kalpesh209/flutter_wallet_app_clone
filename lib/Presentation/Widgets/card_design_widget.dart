import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_wallet_app_clone/Presentation/Widgets/icon_container_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

Widget cardDesign(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
    margin: const EdgeInsets.all(10),
    height: size.height * .2,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.darkpurple1,
      borderRadius: BorderRadius.circular(40),
    ),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/cardScreen');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Stack(
          children: [
            Positioned(
              left: size.width * 0.04,
              top: -size.width * 0.03,
              child: Container(
                height: 54,
                width: 58.35,
                decoration: BoxDecoration(
                    color: AppColors.darkpurple2, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              bottom: -size.height * 0.04,
              right: -size.height * 0.05,
              child: Align(
                child: Container(
                  height: 143,
                  width: 154.53,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.purple, width: 3)),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(
                      right: size.width / 4,
                      left: size.width / 20,
                      top: 0,
                      bottom: 0),
                  leading: Text(
                    "Balance",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                  ),
                  trailing: Text(
                    "Card",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Text(
                    "\$ 1.234",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 40),
                  ),
                  trailing: Text(
                    "Mabank",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget iconDesign() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconContainerWidget(
        icon: IconlyBold.swap,
        title: 'Transfer',
      ),
      IconContainerWidget(
        icon: IconlyBold.wallet,
        title: 'Payment',
      ),
      IconContainerWidget(
        icon: IconlyBold.activity,
        title: 'Payout',
      ),
      IconContainerWidget(
        icon: CupertinoIcons.add_circled,
        title: 'Top up',
      ),
    ],
  );
}
