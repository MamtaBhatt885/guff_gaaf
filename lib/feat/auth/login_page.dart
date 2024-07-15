import 'package:flutter/material.dart';
import 'package:guff_gaaf/components/buttons.dart';
import 'package:guff_gaaf/components/my_textfield.dart';

import '../theme/light_theme.dart';

class LoginPage extends StatelessWidget {

  //email and pw controller
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _pwController =TextEditingController();

   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.message,size: 60,color: Theme.of(context).colorScheme.tertiary,),


            SizedBox(height: 20,),
            //welcome back message
Text("Welcome back, you have been missed.",style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.tertiary),),

            SizedBox(height: 20,),

            //email textfield
MyTextField(hintText: "Enter your email",obscureText: false,controller:_emailController ,),

            //pw textfield
            MyTextField(hintText: "Enter your password",obscureText: true,controller:_pwController ,),

            SizedBox(height: 20,),
            //login button
Buttons(text: "Login",onTap: (){},),


            //register now



          ],
        ),
      ),
    );
  }
}
