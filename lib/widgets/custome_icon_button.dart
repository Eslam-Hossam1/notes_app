import 'package:flutter/material.dart';

class CustomeIcon extends StatelessWidget {
  const CustomeIcon({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.onPresed,
  });
  final IconData icon;
  final Color backgroundColor;
  final VoidCallback onPresed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: onPresed,
              icon: Icon(
                icon,
                color: Colors.black,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
