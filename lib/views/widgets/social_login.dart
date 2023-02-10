import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Container(
        alignment: Alignment.center,
        child: Text(
            'Or sign in with',
            style: TextStyle(
              color: GlobalColor.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
        ),
      ),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Svg,
            ),
          ],
        ),
      ],

    );
  }
}
