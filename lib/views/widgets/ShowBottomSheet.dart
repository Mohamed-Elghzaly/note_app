import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_bottom.dart';
import 'custom_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CustomTextField(
              hint: 'title',
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomTextField(
              hint: 'content',
              maxLines: 6,
            ),
            const SizedBox(
              height: 100,
            ),
            const CustomBottom(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
