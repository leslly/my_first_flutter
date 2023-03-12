
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/next_global_button.dart';
import '../../../utils/dynamic.dart';
import '../../../utils/global_colours.dart';
import '../../../utils/text_form_global.dart';
import '../../label_two.dart';

class CategoryOneView extends StatelessWidget {
   CategoryOneView({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        /*physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),*/
        slivers: [
          SliverAppBar(
            backgroundColor: GlobalColor.white,
            foregroundColor: Colors.black,
            automaticallyImplyLeading: true,
            toolbarHeight: 150,
            title: Container(
              margin: const EdgeInsets.only(top: 0, right: 0),
              child: Text(//container was here
                'Technical skills!! 🤔',
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
                        topLeft: Radius.circular(20)
                    )
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: [
                    TextFormGlobal(
                      controller: searchController,
                      text: 'Search for skills',
                      textInputType: TextInputType.text,
                      obscure: false,
                      radius: 28,
                      width: 328,
                      icon: Icons.search_rounded,
                    ),
                  ],
                ),
              ),
            ),
            pinned: true,
            // expandedHeight: 150,
            // flexibleSpace: const FlexibleSpaceBar(),
          ),
          SliverToBoxAdapter(
            child : Container(
              padding: EdgeInsets.all(25.0),
              color: GlobalColor.blue,
              child : SingleChildScrollView(
                child: Column(
                  children : [
                    const SizedBox(height: 10,),
                    LabelTwo( text: 'bread'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                    const SizedBox(height: 15),
                    LabelTwo( text: 'milk and honey'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height80,
        color: GlobalColor.blue,
        alignment: Alignment.center, // the text is not centered
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NextButton(
              next: () {
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    content: const Text(
                      'Proceed with Leslie mobile application on selected programs.', style:TextStyle(
                      fontSize: 16,
                    ),
                    ),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        isDefaultAction: true,
                        textStyle: TextStyle(
                          color: GlobalColor.black,
                          fontFamily: 'Reem',
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Yes'),
                      ),
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        textStyle: TextStyle(
                          color: GlobalColor.black,
                          fontFamily: 'Reem',
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('No'),
                      ),
                    ],
                  ),
                ); // showCupertinoModalPopup
              },
            ),
          ],
        ),
      ),
    );
  }
}
