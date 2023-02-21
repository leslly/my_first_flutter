import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/dream_view.dart';

class DreamGlobalButton extends StatelessWidget {
  const DreamGlobalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()  {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DreamView()));
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
              children:  [
                const Text(
                  "I have a dream role in mind!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Reem',
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Fill in some basic information and sit back relax.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.2,
                    fontFamily: 'Reem',
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Text(
                      "AI Generated - 3 simple steps",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Reem',
                        fontSize: 16,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(width: 97),
                    Icon(
                      Icons.chevron_right_outlined,
                    ),
                  ],
                ),
              ],
            )
            ),
      ),
    );
  }
}
