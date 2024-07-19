import 'package:flutter/material.dart';
import 'package:guff_gaaf/feat/auth/auth_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout(){
//get auth service
  final _auth = AuthService();
  _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Center(child: Text("Home")),
actions: [
  IconButton(onPressed: logout, icon:Icon(Icons.logout) )
],

      ),
    );
  }
}
