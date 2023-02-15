import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/dream_view.dart';

class DreamGlobalButton extends StatelessWidget {
  const DreamGlobalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(context, MaterialPageRoute(builder: (context) => DreamView()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 173,
        width: 353,
        decoration: BoxDecoration(
          color: GlobalColor.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 9,
            ),
          ],
        ),
        child: const Text(
          'I have a dream role in mind',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        //const SizedBox(height: 10),
      ),
    );
  }
}
