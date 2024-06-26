import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield({
    super.key,
    required this.hint,
    this.borderColor,
    required this.maxLines,
  });
  final String hint;
  final Color? borderColor;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: borderColor),
          border: buildBorder(),
          focusedBorder: buildBorder(borderColor)),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
