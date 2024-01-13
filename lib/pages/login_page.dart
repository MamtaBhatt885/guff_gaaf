// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guff_gaaf/component/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              height: 20,
            ),
            //welcome back message
            Text(
              "Welcome back to guff gaaf",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              height: 25,
            ),

            //email textfield
            MyTextField(
              hintText: "Enter your email",
              obscureText: false,
            ),
            SizedBox(
              height: 20,
            ),

            //password
            MyTextField(
              hintText: "Enter your password",
              obscureText: true,
            )
            //register now

            //login button
          ],
        ),
      ),
    );
  }
}
