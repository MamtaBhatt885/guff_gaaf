import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guff_gaaf/feat/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Settings",
          style: TextStyle(color:Theme.of(context).colorScheme.tertiary,
              fontSize: 24 ),
        ),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.tertiary, // Change the drawer icon color here
        ),
      ),
      body: Container(

        decoration:BoxDecoration(color: Theme.of(context).colorScheme.secondary,
          borderRadius:BorderRadius.circular(16),
        ),

        margin: EdgeInsets.all(24),
        padding: EdgeInsets.all(16),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //dark mode
            Text("Dark Mode",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary
            ),),

            //switch toggle
          CupertinoSwitch(
            value: Provider.of<ThemeProvider>(context,listen:false).isDarkMode,

            onChanged: (value){
Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
          },),

          ],
        ),
      ),
    );
  }
}
