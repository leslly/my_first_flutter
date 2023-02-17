import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/dream_view.dart';

class DreamGlobalButton extends StatelessWidget {
  const DreamGlobalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          //go to next page
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DreamView()));
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
                    "I nave a dream role in mind!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      height: 1.2,//what's the height for ?
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fill in some basic information and sit back.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      height: 1.2,
                      fontWeight: FontWeight.normal,
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
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      height: 1.2,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
