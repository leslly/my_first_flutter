import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/no_dream_view.dart';

class NoDreamButton extends StatelessWidget {
  const NoDreamButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(context, MaterialPageRoute(builder: (context) => NoDreamView()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 9,
            ),
          ],
        ),
        child: const Text(
          'Next page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
