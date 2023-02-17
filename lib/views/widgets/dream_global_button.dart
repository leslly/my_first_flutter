import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/dream_view.dart';

class DreamGlobalButton extends StatelessWidget {
  const DreamGlobalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 173,
      width: 353,
      decoration: BoxDecoration(
        color: GlobalColor.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 9,
          ),
        ],
      ),
      child: Padding(
          padding: EdgeInsets.only(left: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "i will come  to the house later this evening daughter, And tell your mother about it",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "i will come  to the house later this evening leslie, And tell your mother about it",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "i will come  to the house later this evening son, And tell your mother about it",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.2,
                ),
              ),
            ],
          )
          /*const Text(
            'I have a dream role in mind',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),*/
          //const SizedBox(height: 10),
          ),
    );
  }
}
