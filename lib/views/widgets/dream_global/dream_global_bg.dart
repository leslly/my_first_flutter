import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/dynamic.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'dream_global_button.dart';
import 'no_dream_global_button.dart';

class DreamGlobalBg extends StatelessWidget {
  const DreamGlobalBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: NeverScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            backgroundColor: GlobalColor.white,
            foregroundColor: Colors.black,
            automaticallyImplyLeading: false,
            toolbarHeight: 150,
            title: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 0, right: 0),
              child: Text(//container was here
                'Welcome User',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Reem',
                    color: GlobalColor.black),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Container(
                //// This is where we have the curved edges
                decoration: BoxDecoration(
                    color: GlobalColor.blue,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),

                child: Center(
                  child: Text(
                    "Let's build your career map.",
                    style: TextStyle(
                      fontFamily: 'Reem',
                      fontSize: 24,
                      color: GlobalColor.white,
                    ),
                  ),
                ),
              ),
            ),
            // pinned: true,
            // expandedHeight: 150,
            // flexibleSpace: const FlexibleSpaceBar(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: Dimensions.height733,
              decoration: BoxDecoration(
                color: GlobalColor.blue,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 360,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const DreamGlobalButton(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 360,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const NoDreamButton(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
