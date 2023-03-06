import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class LabelGlobal extends StatelessWidget {
  LabelGlobal({Key? key, this.text = 'How to study'}) : super(key: key);

  final String text;//// to change the text in dream view
 // final VoidCallback changeColor;////TOo navigate to subject page
  bool _colorOfButton = true;//// for the color and icons

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          _colorOfButton = !_colorOfButton;
          _colorOfButton ? Icons.clear_sharp : Icons.check_sharp;
      },
      child: Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
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
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                  color: _colorOfButton ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              _colorOfButton ? Icons.clear_sharp : Icons.check_sharp,
              color: _colorOfButton? Colors.white : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

