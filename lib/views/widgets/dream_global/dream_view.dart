import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/text_form_global.dart';
import 'package:my_first_flutter/views/content_view.dart';
import 'package:my_first_flutter/views/label_two.dart';
import 'package:my_first_flutter/views/widgets/label_global.dart';

import '../../../utils/global_colours.dart';

class DreamView extends StatelessWidget {
   DreamView({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: GlobalColor.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pick your skills!',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Reem',
                color: GlobalColor.black,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const SizedBox(height: 50),
            Container(
              color: GlobalColor.white,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.maxFinite,
                height: 500,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    TextFormGlobal(
                      controller: searchController,
                      text: 'Search for skills',
                      textInputType: TextInputType.text,
                      obscure: false,
                      a: 28,
                      b: 328,
                    ),
                    const SizedBox(height: 30),
                    LabelGlobal(text: 'Project Management'),
                    const SizedBox(height: 15),
                    LabelGlobal(text: 'Technical Writing for beginner in primary school'),
                    const SizedBox(height: 15),
                    LabelGlobal(text: 'Web development'),
                    const SizedBox(height: 15),
                    LabelTwo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
