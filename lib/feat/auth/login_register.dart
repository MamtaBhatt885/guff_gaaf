import 'package:flutter/material.dart';
import 'package:guff_gaaf/feat/auth/login_page.dart';
import 'package:guff_gaaf/feat/auth/register_page.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {

  //initially show the login page
  bool showLoginPage =true;

  //toggle between login and register page
  void togglePages(){
    showLoginPage = !showLoginPage;
  }

  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
     return LoginPage(
       onTap: togglePages,
     );
   }else {
     return RegisterPage(
       onTap: togglePages,
     );
   }
  }
}
