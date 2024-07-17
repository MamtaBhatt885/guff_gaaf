import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guff_gaaf/components/buttons.dart';
import 'package:guff_gaaf/components/my_textfield.dart';


class LoginPage extends StatefulWidget {

 final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  //email and pw controller
  final TextEditingController _emailController =TextEditingController();

  final TextEditingController _pwController =TextEditingController();

   //login method
  void login(){
    //

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
Buttons(text: "Login",onTap: login,),
            SizedBox(height: 20,),

            //register now
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Not a member? ",style: TextStyle(color: Theme.of(context).colorScheme.tertiary)),
    GestureDetector(
        onTap:widget.onTap ,
        child: Text(" Register now ",
          style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.bold),)
    ),
  ],
)


          ],
        ),
      ),
    );
  }
}
