import 'package:flutter/material.dart';

import '../utils/global_colours.dart';

class LabelTwo extends StatefulWidget {
  const LabelTwo({Key? key}) : super(key: key);

  @override
  State<LabelTwo> createState() => _LabelTwoState();
}

class _LabelTwoState extends State<LabelTwo> {

  bool _colorOfButton = true;
  Color _secondColorOfButton = Colors.black;
  Color _textColor = Colors.white;
  Color _secondTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _colorOfButton = !_colorOfButton;
          if(Color == !_colorOfButton){
            Icon(
              Icons.clear_sharp,
              color:_textColor,
              //clear_sharp
            );
            TextStyle(
              color: _textColor,
            );
          }else if(Color == _colorOfButton){
            Icon(
              Icons.check_sharp,
              color: _secondTextColor,
              //clear_sharp
            );
            TextStyle(
              color:_secondTextColor,
            );
          }
        });
      },
        // child: _colorOfButton ? Icon(Icons.clear_sharp) : Icon(Icons.check_sharp),
      child: Container(
        padding: EdgeInsets.only(left: 8.0, right: 8),
        height: 32,
        // width: 100*2,
        // margin: EdgeInsets.only(right: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _colorOfButton? Colors.black : Colors.white,
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'global',
              style: TextStyle(

                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: _colorOfButton? Colors.white : Colors.black
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.check_sharp,
                color: _colorOfButton? Colors.white : Colors.black
            ),
          ],
        ),
      ),
    );
  }
}
