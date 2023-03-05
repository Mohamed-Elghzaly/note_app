import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit.dart/add_note_cubit.dart';
import 'package:note_app/models/note_view_model.dart';

import 'custom_bottom.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final formKey = GlobalKey<FormState>();
  String? title, subtitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 6,
          ),
          const SizedBox(
            height: 100,
          ),
          CustomBottom(
            onTep: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteViewModel(
                  title: title!,
                  content: subtitle!,
                  date: DateTime.now().toString(),
                  color: Colors.red.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}