import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/content_view.dart';

class LabelGlobal extends StatelessWidget {
  const LabelGlobal({Key? key, this.text = 'How to study', required this.changeColor}) : super(key: key);

  final String text;
  final VoidCallback changeColor;
  //final Color change = GlobalColor.black;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: changeColor,
      onTap: () {

        if(Colors == GlobalColor.black){
          Icon(
            Icons.clear_sharp,
            //clear_sharp
          );
        }else{
          Icon(
            Icons.check_sharp,
            //clear_sharp
          );
        }
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
              Icons.check_sharp,
              //clear_sharp
            ),
          ],
        ),
      ),
    );
  }
}
