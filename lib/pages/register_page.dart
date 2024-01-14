// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guff_gaaf/services/auth/auth_service.dart';
import 'package:guff_gaaf/component/my_button.dart';
import 'package:guff_gaaf/component/my_textfield.dart';

class RegisterPage extends StatelessWidget {
//email and pw text controllers to take the data what user had typed

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _checkPassword = TextEditingController();

  //tap to go to login page
  void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  //register method

  void register(BuildContext context) {
//get auth service
    final _auth = AuthService();

    //password match create user

    if (_pwController.text == _checkPassword.text) {
      try {
        _auth.signUpWithEmailPassword(
            _emailController.text, _pwController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    }
    //passwords don't match-> show error
    else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Passwords don't match"),
              ));
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
              "Become a member of guff gaaf, register here",
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

            // check password
            MyTextField(
              hintText: "Enter your password",
              obscureText: true,
              controller: _checkPassword,
            ),

            SizedBox(
              height: 20,
            ),

            //register button
            MyButton(
              text: "Register",
              onTap: () => register(context),
            ),

            const SizedBox(
              height: 20,
            ),
            //login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already a member? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login",
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
