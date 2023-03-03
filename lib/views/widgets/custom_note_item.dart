
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoetItem extends StatelessWidget {
  const NoetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
        color: Color(0xffD2A96D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'build your career with tharwat samy',
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 24),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              'May 21 ,2021',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}