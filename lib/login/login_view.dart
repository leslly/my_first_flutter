import 'package:flutter/material.dart';
import 'package:my_first_flutter/utils/global_colours.dart';
import 'package:my_first_flutter/login/button_global.dart';
import 'package:my_first_flutter/login/social_login.dart';
import 'package:my_first_flutter/utils/text_form_global.dart';
import 'package:my_first_flutter/login/sign_up_view.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key}) : super(key: key);
   final TextEditingController emailController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
//widget = container = child = children[]
  @override
  Widget build(BuildContext context) { // there is only one widget that holds everything
    return Scaffold( // is a class/widget that contains all the actions of an widget
      //expanded widget ~ children inder the parent will take evy available in the parent widget
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(// the logo and text field are inside the same column to aid alignment
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [//inside the column
                const SizedBox(height: 20),
                Container(// container for the logo
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'c',
                        style: TextStyle(
                          fontFamily: 'Reem',
                          color: GlobalColor.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          'e',
                          style: TextStyle(
                            fontFamily: 'Reem',
                            color: GlobalColor.red,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'llSolution',
                        style: TextStyle(
                          fontFamily: 'Reem',
                          color: GlobalColor.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      color: GlobalColor.black,
                    ),
                  ),
                ),
                const SizedBox(height: 40), //Are the logo,text and textfield seperated by the siwed box
                ////Email Input
                Center(
                  child: TextFormGlobal(controller: emailController,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                    //icon:,
                    radius: 4,
                    width: 339,
                  ),
                ),
                ////Email Input End
                const SizedBox(height: 30),// space b/w the email and pwd form

                //// Password Input
                Center(
                  child: TextFormGlobal(
                    controller: passwordController ,
                    text: 'password',
                    textInputType: TextInputType.text,
                    obscure: true,
                    radius: 4,
                    width: 339,
                  ),
                ),
                ////password Input End
                const SizedBox(height: 50),
                //Button
                const ButtonGlobal(),
                const SizedBox(height: 40),
                const SocialLogins(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container( // I don't know why the text was put in a navigation bar
        height: 50,
        alignment: Alignment.center, // the text is not centered
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account ?",
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView()));
              },
              child: Text(
                'Sign Up',
                  style: TextStyle(
                    color: GlobalColor.blue,
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
