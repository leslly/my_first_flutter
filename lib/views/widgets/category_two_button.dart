import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/category_two_view.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class CategoryTwoButton extends StatelessWidget {
  const CategoryTwoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryTwoView()));
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
                  "Hard Skills",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text(
                    "Hard skills are objective, quantifiable skills gained through training, school or work experiences. These are skills like project management and data analysis .",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        height: 1.2,
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
