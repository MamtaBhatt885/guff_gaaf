import 'package:flutter/material.dart';

import 'package:guff_gaaf/feat/theme/light_theme.dart';

import 'feat/auth/login_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginRegister(),
      theme: LightMode,
    );
  }
}
