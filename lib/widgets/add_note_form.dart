import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/helper/add_height_space.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/CustomeTextField.dart';
import 'package:notes_app/widgets/custome_bottom_sheet_button.dart';

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
              if (formKey.currentState!.validate())  {
                formKey.currentState!.save();
                NoteModel note = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now.toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
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
