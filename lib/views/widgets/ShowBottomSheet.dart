import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_bottom.dart';
import 'custom_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: SingleChildScrollView(
        child: AddNoteForm(),
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
