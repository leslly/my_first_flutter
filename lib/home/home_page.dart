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
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Text("milo and milk", textAlign: TextAlign.center, ),
                Row(
                  children: [
                    Text("LESLIE"),

                  ],
                )
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
