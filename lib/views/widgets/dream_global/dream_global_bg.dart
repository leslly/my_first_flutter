import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import '../dream_global_button.dart';
import '../no_dream_global_button.dart';

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
            automaticallyImplyLeading: true,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome User',
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                    color: GlobalColor.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Center(
                  child: Text(
                    "Let's build your career map."
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),

              ),
            ),
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 733,
              decoration: BoxDecoration(
                color: GlobalColor.blue,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: DreamGlobalButton(),

                    //   child: NoDreamButton(),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: NoDreamButton(),

                    //   child: NoDreamButton(),
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
