import 'package:auth/pages/home.dart';
import 'package:flutter/material.dart';

import '../main.dart';

//sign in button
class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String email;
  final String password;

  const MyButton(
      {super.key,
      required this.onTap,
      required this.email,
      required this.password});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String goodemail = 'aya@gmail.com';
        String goodpass = '123456@123456';

        print(email);
        print(password);
        if (email == goodemail && password == goodpass) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ));
        }
        /* else {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ));
        }*/
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 133, 171),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

//sign up button
class MyButtonup extends StatelessWidget {
  final Function()? onTap;

  const MyButtonup({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 133, 171),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
