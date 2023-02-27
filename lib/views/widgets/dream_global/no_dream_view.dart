import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/widgets/categories/category_one_button.dart';
import 'package:my_first_flutter/views/widgets/categories/category_two_button.dart';
import 'package:my_first_flutter/views/widgets/categories/category_three_button.dart';

import '../../../utils/global_colours.dart';

class NoDreamView extends StatelessWidget {
  const NoDreamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(
        //   parent: NeverScrollableScrollPhysics(),
        // ),
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
                decoration: BoxDecoration(
                    color: GlobalColor.blue,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.maxFinite,
                padding: const EdgeInsets.all(10.0),
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
            pinned: true,
            expandedHeight: 150,
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
                    decoration: BoxDecoration(
                      color: GlobalColor.blue,
                    ),
                    child: const CategoryOneButton(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: GlobalColor.blue,
                    ),
                    child: const CategoryTwoButton(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: GlobalColor.blue,
                    ),
                    child: const CategoryThreeButton(),
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
