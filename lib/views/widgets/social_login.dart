import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text('Or sign in with',
              style: TextStyle(
                color: GlobalColor.textColor,
                fontSize: 18,
              )),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            /////Google
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: GlobalColor.bodyColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow:[
                    BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                   ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/image/icons8-google.svg',
                  height: 30,
                ),
              ),
            ),
            /////GitHub
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: GlobalColor.bodyColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/image/icons8-github.svg',
                  height: 30,
                ),
              ),
            ),
            /////LinkedIn
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: GlobalColor.bodyColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/image/icons8-linkedin.svg',
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
