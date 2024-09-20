import 'package:flutter/material.dart';
import 'package:notes/Widgets/CustomIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onIconPressed});
  final String title;
  final IconData icon;
  final void Function()? onIconPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(
          onPressed: onIconPressed,
          icon: icon,
        ),
      ],
    );
  }
}
