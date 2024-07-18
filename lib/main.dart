import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guff_gaaf/feat/auth/auth_gate.dart';

import 'package:guff_gaaf/feat/theme/light_theme.dart';
import 'package:guff_gaaf/firebase_options.dart';

import 'feat/auth/login_register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions .currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  AuthGate(),
      theme: LightMode,
    );
  }
}
