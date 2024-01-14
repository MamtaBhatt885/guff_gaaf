// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guff_gaaf/services/auth/auth_service.dart';
import 'package:guff_gaaf/component/my_button.dart';
import 'package:guff_gaaf/component/my_textfield.dart';

class LoginPage extends StatelessWidget {
//email and pw text controllers to take the data what user had typed

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

//tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  //login method

  void login(BuildContext context) async {
//auth service
    final authService = AuthService();

//try login
    try {
      await authService.signInWithEmailPassword(
          _emailController.text, _pwController.text);
    }
//catch any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

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
              controller: _emailController,
            ),
            SizedBox(
              height: 20,
            ),

            //password
            MyTextField(
              hintText: "Enter your password",
              obscureText: true,
              controller: _pwController,
            ),
            SizedBox(
              height: 20,
            ),

            //login button
            MyButton(
              text: "Login",
              onTap: () => login(context),
            ),

            const SizedBox(
              height: 20,
            ),
            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
