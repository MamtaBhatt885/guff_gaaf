import 'package:flutter/material.dart';
import 'package:guff_gaaf/auth/auth_service.dart';
import 'package:guff_gaaf/component/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
       
      ),
      drawer: MyDrawer(),
    );
  }
}
