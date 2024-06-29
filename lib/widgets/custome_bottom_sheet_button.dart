import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit_states.dart';

class CustomeBottomSheetButton extends StatelessWidget {
  const CustomeBottomSheetButton({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
        child: Center(
          child: BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return state is AddNoteLoadingState ? SizedBox(height:24, width:24, child: CircularProgressIndicator(),) :Text(
                "Add",
                style: TextStyle(color: Colors.black, fontSize: 20),
              );
            },
          ),
        ),
      ),
    );
  }
}
