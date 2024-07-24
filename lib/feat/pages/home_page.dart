import 'package:flutter/material.dart';
import 'package:guff_gaaf/components/my_drawer.dart';
import 'package:guff_gaaf/feat/auth/auth_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: Text("Home",style: TextStyle(color:Theme.of(context).colorScheme.tertiary,fontSize: 24 ),


      ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.tertiary, // Change the drawer icon color here
        ),),
      drawer: MyDrawer(),
    );
  }
}
