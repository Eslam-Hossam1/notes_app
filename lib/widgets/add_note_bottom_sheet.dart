import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeTextfield(
          hint: "Title",
          borderColor: kPrimaryColor,
          maxLines: 1,
        ),
        addHieghtSpace(32),
        CustomeTextfield(
          hint: "content",
          maxLines: 5,
          borderColor: kPrimaryColor,
        )
      ],
    );
  }
}

