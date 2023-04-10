import 'package:flutter/material.dart';
import '../tools/button.dart';
import '../tools/textfield.dart';
import 'package:flutter/gestures.dart';
import '../pages/home.dart';
import '../pages/signup.dart';

class Signinpage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Center(child: Text('SIGN IN ', style: TextStyle())),
        backgroundColor: Color.fromARGB(255, 245, 133, 171),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(children: [
          const SizedBox(height: 50),

          // logo
          const Icon(
            Icons.account_box,
            size: 100,
            color: Color.fromARGB(255, 245, 133, 171),
          ),

          const SizedBox(height: 50),

          // welcome back, you've been missed!
          Text(
            'Welcome back you',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25),

          // username textfield
          MyTextField(
            controller: emailController,
            hintText: 'email',
            obscureText: false,
          ),
          const SizedBox(height: 10),
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

          const SizedBox(height: 10),

          // forgot password?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[900]),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // sign in button

          const SizedBox(height: 50),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: RichText(
                text: TextSpan(
                  text: 'not a member? ',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'register now',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signuppage(),
                                ));
                          },
                        style: const TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
              ))
            ],
          )
        ]),
      ),
    );
  }
}
