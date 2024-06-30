import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        Spacer(),
        Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.07),
                borderRadius: BorderRadius.circular(16)),
            child: Center(
                child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      icon,
                      size: 32,
                    ))))
      ],
    );
  }
}
