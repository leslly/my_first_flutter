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
              children: const [
                Text(
                  'Welcome User',
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
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
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: const FlexibleSpaceBar(),
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
                    child: const DreamGlobalButton(),

                    //   child: NoDreamButton(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const NoDreamButton(),

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
