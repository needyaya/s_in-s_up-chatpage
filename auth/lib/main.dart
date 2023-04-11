import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../pages/signin.dart';
import '../pages/home.dart';
import '../tools/button.dart';
import '../tools/textfield.dart';
import '../pages/signup.dart';

void main() {
  runApp(Authen());
}

class Authen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {
    String gooduser = 'aya';
    String goodpass = '123456';

    print(usernameController.text);
    print(passwordController.text);
    if (usernameController.text == gooduser &&
        passwordController.text == goodpass) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ));
    } else {
      usernameController.clear();
      passwordController.clear();

      final snackBar = SnackBar(
        content: const Text('user or password unvalid'),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SIGN IN ', style: TextStyle())),
        backgroundColor: Color.fromARGB(255, 245, 133, 171),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
                user: usernameController.text,
                password: passwordController.text,
              ),

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
        ),
      ),
    );
  }
}
