import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
   const TextFormGlobal({Key? key, required this.controller, required this.text, required this.textInputType, required this.obscure, this.a = 100, this.b = 339}) : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final double a;//radius
   final double b;//width

  @override
  Widget build(BuildContext context) {
    return Container( // this is the container for the email
      height: 55,
      width: b,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(a),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: TextFormField( // the child inside the container holds the text field for the email
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}
