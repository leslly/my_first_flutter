import 'package:flutter/material.dart';
import 'package:my_first_flutter/views/splash_view.dart';
import 'package:my_first_flutter/views/login_view.dart';

void main(){

  runApp(const App());
}

 class App extends StatelessWidget {
  const App({ Key? Key }) : super(key: Key);

  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: splashView(),
    );
  }
 }