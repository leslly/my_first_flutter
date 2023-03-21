import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/login/login_view.dart';
import 'package:get/route_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(LoginView());
      //// ERROR, GET keyword not recognised ~> solved by import
    });
    return Scaffold(
      backgroundColor: GlobalColor.blue,
      body:  Center(// the text is not centered
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'c',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              child: Text(
                'e',
                style: TextStyle(
                  color: GlobalColor.red,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'llSolution',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ),
      );
  }
}
