import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/home/home_page.dart';
import 'package:my_first_flutter/views/widgets/dream_global_button.dart';


class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DreamGlobalButton()));
          // According to video, ' this ' keyword is added when you hover
          // over print but i get something different
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
              color: GlobalColor.blue,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
          ),
          child: const Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
          ),
        ),
      ),
    );
  }
}
