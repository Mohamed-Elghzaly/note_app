import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
