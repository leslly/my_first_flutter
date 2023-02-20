import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/widgets/category_one_button.dart';
import 'package:my_first_flutter/views/widgets/category_two_button.dart';
import 'package:my_first_flutter/views/widgets/category_three_button.dart';

class NoDreamView extends StatelessWidget {
  const NoDreamView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
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
              children: [],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Center(),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(),
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
                  child: CategoryOneButton(),
                  // child: CategoryTwoButton(),
                  // child: CategoryThreeButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
