import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'dart:ui';
import 'package:my_first_flutter/views/content_view.dart';

class LabelGlobal extends StatelessWidget {
  LabelGlobal({Key? key, this.text = 'How to study', required this.changeColor, required this.icon}) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback changeColor;

  //final Color change = GlobalColor.black;
  bool _changeIcon = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: changeColor,
      onTap: () {
          _changeIcon =! _changeIcon;
      },
      child: Container(
        padding: EdgeInsets.only(left: 8.0, right: 8),
        height: 32,

        // margin: EdgeInsets.only(right: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: GlobalColor.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: GlobalColor.black,
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(width: 10),
            Icon(
             icon,
              //clear_sharp
            ),
          ],
        ),
      ),
    );
  }
}
