import 'package:flutter/material.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 32,
                    ))))
      ],
    );
  }
}
