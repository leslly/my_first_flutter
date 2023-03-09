import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/widgets/categories/category_three_view.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class CategoryThreeButton extends StatelessWidget {
  const CategoryThreeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  CategoryThreeView()));
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
              children: [
                Text(
                  "Soft Skills",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Reem',
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: GlobalColor.black,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  "Soft skills are character traits and interpersonal skills that characterize a person’s  relationship with other people . These are skills like time management and communication .",
                  maxLines: 4,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontFamily: 'Reem',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      height: 1.2,
                      color: GlobalColor.black,
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.arrow_forward_rounded,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}


