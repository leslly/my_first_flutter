import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/content_view.dart';

class LabelGlobal extends StatelessWidget {
  const LabelGlobal({Key? key, this.text = 'How to study', required this.nextPage}) : super(key: key);

  final String text;
  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: nextPage,
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: GlobalColor.white,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: GlobalColor.black,
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
