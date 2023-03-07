import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.next}) : super(key: key);

  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: next,
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 352,
        color: GlobalColor.blackTwo,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            fontFamily: 'Reem',
            color: GlobalColor.white,
          ),
        ),
      ),
    );
  }
}
