/*import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

import '../pages/signin.dart';
import '../pages/home.dart';
import '../tools/button.dart';
import '../tools/textfield.dart';
import '../pages/signup.dart';
import '../pages/auth.dart';

class Signuppage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SIGN UP ', style: TextStyle())),
        backgroundColor: Color.fromARGB(255, 245, 133, 171),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                const Icon(
                  Icons.account_box,
                  size: 100,
                  color: Color.fromARGB(255, 245, 133, 171),
                ),

                const SizedBox(height: 50),

                // JOIN THE HAPPY FAMILLY
                Text(
                  'JOIN THE HAPPY FAMILLY ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),
                MyTextField(
                  controller: emailController,
                  hintText: 'email@example.ex',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: () {
                    bool email = EmailValidator.validate(emailController.text);
                    if (email == true) {
                      () async {
                        await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: usernameController.text,
                          password: passwordController.text,
                        );
                      };
                    } else {
                      usernameController.clear();
                      passwordController.clear();
                      emailController.clear();
                      final snackBar = SnackBar(
                        content: const Text('please enter a valid email'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      // Find the ScaffoldMessenger in the widget tree
                      // and use it to show a SnackBar.
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  email: emailController.text,
                  password: passwordController.text,
                  username: usernameController.text,
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
