import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/login_view.dart';

class splashView extends StatelessWidget {
  const splashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(const LoginView());
      //// ERROR, GET keyword not recognised
    });
    return Scaffold(
      backgroundColor: GlobalColor.mainColor,
      body: const Center(
        child: Text(
            'cellSolution',
        style: TextStyle(
            color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
        ),
      );
  }
}
