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
                color: GlobalColor.black,
                fontSize: 18,
              )),
        ),
        const SizedBox(height: 60),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              /////Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                   // color: GlobalColor.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/icons8-google.svg',
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              /////GitHub
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                   // color: GlobalColor.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/icons8-github.svg',
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              /////LinkedIn
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    //color: GlobalColor.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/icons8-linkedin-circled.svg',
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
