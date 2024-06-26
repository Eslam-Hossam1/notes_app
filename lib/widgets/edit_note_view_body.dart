import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';
import 'package:notes_app/widgets/custome_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          addHieghtSpace(50),
          CustomeAppBar(title: "Edit Note", icon: Icons.check),
          addHieghtSpace(50),
          CustomeTextfield(
              hint: "Title", borderColor: kPrimaryColor, maxLines: 1),
          addHieghtSpace(24),
          CustomeTextfield(
              hint: "Content", borderColor: kPrimaryColor, maxLines: 5),
        ],
      ),
    );
  }
}
