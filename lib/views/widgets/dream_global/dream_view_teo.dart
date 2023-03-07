import 'package:flutter/material.dart';
import '../../../utils/global_colours.dart';
import '../../../utils/text_form_global.dart';
import '../../label_two.dart';

class DreamViewTwo extends StatelessWidget {
  DreamViewTwo({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            backgroundColor: GlobalColor.white,

            foregroundColor: Colors.black,
            automaticallyImplyLeading: true,
            toolbarHeight: 100,
            title: Container(
              margin: const EdgeInsets.only(top: 60, right: 0),
              child: Text(
                //container was here
                'Pick your skills!!',
                style: TextStyle(
                    fontSize: 25, fontFamily: 'Reem', color: GlobalColor.black),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Container(
                //// This is where we have the curved edges
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: GlobalColor.blue,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            expandedHeight: 150,
           // flexibleSpace: const FlexibleSpaceBar(),
          ),
           SliverToBoxAdapter(
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   Container(
                     child: TextFormGlobal(
                       controller: searchController,
                       text: 'Search for skills',
                       textInputType: TextInputType.text,
                       obscure: false,
                       a: 300,
                       b: 328,
                     ),
                   ),
                   const SizedBox(height: 30),
                   LabelTwo(text: 'bread'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                   const SizedBox(height: 15),
                   LabelTwo(text: 'milk and honey'),
                 ],
               ),
             ),
           ),
        ],
      ),
    );
  }
}
