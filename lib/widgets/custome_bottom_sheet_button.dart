import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomeBottomSheetButton extends StatelessWidget {
  const CustomeBottomSheetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}