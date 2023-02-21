import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/widgets/category_one_button.dart';
import 'package:my_first_flutter/views/widgets/category_two_button.dart';
import 'package:my_first_flutter/views/widgets/category_three_button.dart';

import '../utils/global_colours.dart';

class NoDreamView extends StatelessWidget {
  const NoDreamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'One step at the time',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Reem',
                    color: GlobalColor.black,
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                  child: Text(
                    'Take a pick!',
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
            expandedHeight: 150,
            flexibleSpace: const FlexibleSpaceBar(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const CategoryOneButton(),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const CategoryTwoButton(),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const CategoryThreeButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
