import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 45,bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("milo and milk", textAlign: TextAlign.center, ),
                    Row(
                      children: [
                        Text("LESLIE"),

                      ],
                    )
                  ],
                ),
               Center(
                 child: Container(
                   width: 100,
                   height: 200,
                 ),
               ),
              ],

            ),

          ),
        ],
      ),
    );
    /*Container(
      child: Column(
        children: const [
          Text("bread and butter cause obesity", maxLines: 8 ,),
        ],
      ),
    );*/
  }
}
