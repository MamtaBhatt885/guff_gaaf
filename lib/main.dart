import 'package:flutter/material.dart';
import 'package:guff_gaaf/feat/auth/login_page.dart';
import 'package:guff_gaaf/feat/theme/light_theme.dart';

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
      home:  LoginPage(),
      theme: LightMode,
    );
  }
}
