import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/login_view.dart';
import 'package:get/route_manager.dart';

class splashView extends StatelessWidget {
  const splashView({Key? key}) : super(key: key);

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
            Text(
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
            Text(
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
/*
* hild: Row(
          children: [
            Text(
              "Don't have an account ?",
            ),
            InkWell(
              child: Text(
                'Sign Up',
                  style: TextStyle(
                    color: GlobalColor.mainColor,
                    fontSize: 16,
                  ),
              ),
            ),
          ],
        ),
        * Text(
            'cellSolution',
        style: TextStyle(
            color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),*/