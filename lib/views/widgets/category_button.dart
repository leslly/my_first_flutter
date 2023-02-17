import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/category_view.dart';

class CategoryOneButton extends StatelessWidget {
  const CategoryOneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //go to next page
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryView()));
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 45,
        width: 352,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: GlobalColor.blackTwo,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 9,
            ),
          ],
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
