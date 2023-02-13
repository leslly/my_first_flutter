import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/views/widgets/button_global.dart';
import 'package:my_first_flutter/views/widgets/social_login.dart';
import 'package:my_first_flutter/views/widgets/text_form_global.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key: key);
   final TextEditingController emailController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
//widget = container = child = children[]
  @override
  Widget build(BuildContext context) { // there is only one widget that hlds everything
    return Scaffold( // is a class/widget that contains all the actions of an activityh
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(// the logo and textfield are inside the same column to aid alignment
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [//inside the column
                const SizedBox(height: 20),
                Container( // container for the logo
                  alignment: Alignment.center,
                  child: Text(
                      'cellSolution',
                          style: TextStyle(
                            color: GlobalColor.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    color: GlobalColor.textColor,
                  ),
                ),
                const SizedBox(height: 15), //Are the logo,text and textfield seperated by the siwed box
                ////Email Input
                TextFormGlobal(controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),
                ////Email Input End
                const SizedBox(height: 10),// space b/w the email and pwd form

                //// Password Input
                TextFormGlobal(
                  controller: passwordController ,
                  text: 'password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                ////password Input End
                const SizedBox(height: 50),
                //Button
                const ButtonGlobal(),
                const SizedBox(height: 20),
                SocialLogins(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container( // I don't know why the text was put in a navigation bar
        height: 50,
        color: Colors.white,
        alignment: Alignment.center, // the text is not centered
        child: Row(
          children: [
            Text(
              "Don't have an account ?",
            ),
            InkWell(
              child: Text(
                'Sign Up',
                  style: TextStyle(
                    color: GlobalColor.mainColor,
                    fontSize: 16,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
