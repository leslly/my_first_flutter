import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/no_dream_view.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class NoDreamButton extends StatelessWidget {
  const NoDreamButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(context, MaterialPageRoute(builder: (context) => const NoDreamView()));
      },
      child: Container(
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
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "I don't have a dream role in mind ?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Reem',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Build your career map manually without AI role recommendation",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Reem',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "AI Generated - 3 simple steps",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Reem',
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 16,
                    height: 1.2,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
