import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';
import 'package:notes_app/widgets/custome_bottom_sheet_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 16, top: 32, bottom: 44),
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomeTextfield(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
            borderColor: kPrimaryColor,
            maxLines: 1,
          ),
          addHieghtSpace(32),
          CustomeTextfield(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "content",
            maxLines: 5,
            borderColor: kPrimaryColor,
          ),
          addHieghtSpace(70),
          CustomeBottomSheetButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
