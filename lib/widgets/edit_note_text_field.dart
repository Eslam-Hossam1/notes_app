import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteTextField extends StatefulWidget {
  const EditNoteTextField(
      {super.key,
      required this.hint,
      this.borderColor,
      required this.maxLines,
      this.onSaved,
      this.onChange,
      required this.fieldText, required this.label});
  final String hint;
  final Color? borderColor;
  final int maxLines;
  final Function(String?)? onSaved;
  final void Function(String)? onChange;
  final String fieldText;
  final String label;

  @override
  State<EditNoteTextField> createState() => _EditNoteTextFieldState();
}

class _EditNoteTextFieldState extends State<EditNoteTextField> {
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    controller.text = widget.fieldText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: widget.onChange,
      onSaved: widget.onSaved,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return "This Field Required Nigga";
        } else {
          return null;
        }
      },
      maxLines: widget.maxLines,
      cursorColor: kPrimaryColor,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: widget.hint,
          label: Text(widget.label),
          hintStyle: TextStyle(color: widget.borderColor),
          border: buildBorder(),
          focusedBorder: buildBorder(widget.borderColor)),
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
