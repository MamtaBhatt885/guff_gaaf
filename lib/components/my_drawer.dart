import 'package:flutter/material.dart';

import '../services/auth/auth_services.dart';
import '../feat/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
//get auth service
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(


      backgroundColor: Theme.of(context).colorScheme.secondary,

  child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [


Column(
  children: [
    //logo
    DrawerHeader(child: Center(child:
    Icon(Icons.message,
      color: Theme.of(context).colorScheme.tertiary,size: 50,
    ),
    ),
    ),
    //home list tiles
    Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text("H O M E",style: TextStyle(color:Theme.of(context).colorScheme.tertiary,fontSize: 24 ),),
        leading: Icon(Icons.home,
          color: Theme.of(context).colorScheme.tertiary,
          size: 24,
        ),
        onTap: (){
          //pop the drawer
          Navigator.pop(context);
        },
      ),
    ),
    //settings list tiles
    Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text("S E T T I N G S",style: TextStyle(color:Theme.of(context).colorScheme.tertiary,fontSize: 24 ),),
        leading: Icon(Icons.settings,color: Theme.of(context).colorScheme.tertiary,size: 24,),
      onTap: (){
          //pop the drawer
        Navigator.pop(context);
        //Navigate to settings page
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage(),),);
      },
      ),
    ),
  ],
),
      //logout list tile
      Padding(
        padding: const EdgeInsets.only(left: 25.0,bottom: 60),
        child: ListTile(
          title: Text("L O G O U T",style: TextStyle(color:Theme.of(context).colorScheme.tertiary,fontSize: 24 ),),
          leading: Icon(Icons.logout,color: Theme.of(context).colorScheme.tertiary,size: 24,),
       onTap:logout ,

        ),
      ),

    ],
  ),

    );
  }
}
