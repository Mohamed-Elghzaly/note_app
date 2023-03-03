import 'package:flutter/material.dart';

import 'custom_seach_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 34,
            ),
          ),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
