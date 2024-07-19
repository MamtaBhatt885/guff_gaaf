import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/buttons.dart';
import '../../components/my_textfield.dart';
import '../auth/auth_services.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;


  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController =TextEditingController();

  final TextEditingController _pwController =TextEditingController();

  final TextEditingController _confirmPwController =TextEditingController();
  void register(BuildContext context) async {
    final _auth = AuthService();

    if (_pwController.text == _confirmPwController.text) {
      try {
        await _auth.signUpWithEmailPassword(
          _emailController.text,
          _pwController.text,
        );
        // Optionally, you can navigate to another page on successful registration.
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Error"),
            content: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Password incorrect"),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(Icons.message,size: 60,color: Theme.of(context).colorScheme.tertiary,),
          
          
              SizedBox(height: 20,),
              //welcome back message
              Text("Let's create an account for you.",style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.tertiary),),
          
              SizedBox(height: 20,),
          
              //email textfield
              MyTextField(hintText: "Enter your email",obscureText: false,controller:_emailController ,),
          
              //pw textfield
              MyTextField(hintText: "Enter your password",obscureText: true,controller:_pwController ,),
          
              //confirm pw textfield
              MyTextField(hintText: "Confirm password",obscureText: true,controller:_confirmPwController ,),
          
              SizedBox(height: 20,),
              //login button
              Buttons(text: "Register",onTap: () => register(context),),
              SizedBox(height: 20,),
          
              //register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",style: TextStyle(color: Theme.of(context).colorScheme.tertiary)),
                  GestureDetector(
                      onTap: widget.onTap,
                      child: Text(" Login now ",style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontWeight: FontWeight.bold),)),
                ],
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
