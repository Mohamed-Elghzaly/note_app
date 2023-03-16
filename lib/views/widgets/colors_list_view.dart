import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit.dart/add_note_cubit.dart';

import '../../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.colorPicked, required this.color});

  final bool colorPicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return colorPicked
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 33,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 31,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 33,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                colorPicked: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
