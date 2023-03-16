import 'package:flutter/material.dart';

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
  List<Color> colors = const [
    Color(0xff9B5DE5),
    Color(0xff006494),
    Color(0xffF15BB5),
    Color(0xffFFAFF0),
    Color(0xffFEE440),
    Color(0xff00BBF9),
    Color(0xff7F96FF),
    Color(0xff00F5D4),
    Color(0xffA6CFD5),
    Color(0xffDBFCFF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                colorPicked: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
