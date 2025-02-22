import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final IconData icon;
  final Function()? ontap;
  const ElevatedButtonWidget({
    super.key,
    required this.icon,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: const ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size.fromHeight(50)),
        shape: WidgetStatePropertyAll(CircleBorder()),
        padding: WidgetStatePropertyAll(
          EdgeInsets.only(left: 10),
        ),
      ),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
