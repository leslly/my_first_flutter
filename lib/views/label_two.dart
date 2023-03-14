import 'package:flutter/material.dart';

class LabelTwo extends StatefulWidget {
  LabelTwo({Key? key,this.text = 'philosophy'}) : super(key: key);

  final String text;

  @override
  State<LabelTwo> createState() => _LabelTwoState();
}

class _LabelTwoState extends State<LabelTwo> {

  bool _colorOfButton = true;
  //String text = 'shopping';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _colorOfButton = !_colorOfButton;
         // _colorOfButton ? Icons.clear_sharp : Icons.check_sharp;
        });
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            height: 32,
            //width: ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _colorOfButton? Colors.white : Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: _colorOfButton? Colors.black : Colors.white
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  _colorOfButton ? Icons.check_sharp : Icons.clear_sharp,
                    color: _colorOfButton? Colors.black : Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
