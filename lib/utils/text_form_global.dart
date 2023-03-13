import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';

class TextFormGlobal extends StatelessWidget {
   const TextFormGlobal({Key? key,this.icon,required this.controller, required this.text, required this.textInputType, required this.obscure, this.radius = 100, this.width = 339,}) : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final double radius;//radius
  final double width;//width
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return Container( // this is the container for the email
      height: 55,
      width: width,
      padding: const EdgeInsets.only(top: 3, left: 15, bottom: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: Center(
        child: TextFormField( // the child inside the container holds the text field for the email
          controller: controller,
          keyboardType: textInputType,
          obscureText: obscure,

          decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(0),
            hintStyle: TextStyle(
              height: 1,
              color: GlobalColor.gray,
            ),
          suffix: icon != null ? Icon(icon, color: Colors.grey): null
          ),
        ),
      ),
    );
  }
}
