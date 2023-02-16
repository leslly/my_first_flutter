import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/dream_view.dart';

class DreamGlobalButton extends StatelessWidget {
  const DreamGlobalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return InkWell(
    //   onTap: () {
    //     //go to next page
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => DreamView()));
    //   },
      return Container(
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
          child: Row(
            children: [
              const Text(
                'I have a dream role in mind!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Fill in some basic information and sit back.',
                style: TextStyle(
                  color: GlobalColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'AI Generated - 3 simple steps',
                style: TextStyle(
                  color: GlobalColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          //const SizedBox(height: 10),
        ),
      ),
    );
  }
}
