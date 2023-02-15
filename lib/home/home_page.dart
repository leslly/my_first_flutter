import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/widgets/dream_global_button.dart';
import 'package:my_first_flutter/views/widgets/no_dream_global_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome User',
                    style: TextStyle(
                      color: GlobalColor.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Container with curved edges
                Container(
                  color: GlobalColor.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    "Let's build your career map",
                    style: TextStyle(
                      color: GlobalColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 // NoDreamButton(),
                 // DreamGlobalButton(),

                )
              ],
            ),
          ),
        ),
      ),
      );

  }
}
