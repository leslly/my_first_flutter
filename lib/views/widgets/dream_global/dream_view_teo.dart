import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/content_view.dart';
import 'package:my_first_flutter/views/next_global_button.dart';
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
            toolbarHeight: 150,
            title: Container(
              margin: const EdgeInsets.only(top: 0, right: 0),
              child: Text(//container was here
                'Pick your skills!!',
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
                      a: 28,
                      b: 328,
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
                    const SizedBox(height: 10),
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
      bottomNavigationBar: Container( // I don't know why the text was put in a navigation bar
        height: 100,
        color: GlobalColor.blue,
        alignment: Alignment.center, // the text is not centered
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           NextButton(
               next: () {
                 CupertinoAlertDialog(
                   content: Text(
                     'Would you like to move on to another category of skills or move on to your courses .',
                     style: TextStyle(
                       color: GlobalColor.black,
                       fontFamily: 'Roboto',
                       fontSize: 14,
                       fontWeight: FontWeight.normal,
                     ),
                   ),
                   actions: [
                     CupertinoDialogAction(child: Text(
                       'Yes',
                       style: TextStyle(
                         color: GlobalColor.black,
                         fontFamily: 'Roboto',
                         fontSize: 15,
                         fontWeight: FontWeight.normal,
                       ),
                     )),
                     CupertinoDialogAction(child: Text(
                       'No',
                       style: TextStyle(
                         color: GlobalColor.black,
                         fontFamily: 'Roboto',
                         fontSize: 15,
                         fontWeight: FontWeight.normal,
                       ),
                     )),
                   ],
                 );
                //// Navigator.push(context, MaterialPageRoute(builder: (context) => ContentView()));
               },
           ),
          ],
        ),
      ),
    );
  }
}
