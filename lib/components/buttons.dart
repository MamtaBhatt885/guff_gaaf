import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const Buttons({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap:onTap ,

      child: Container(
      
        decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.tertiary),
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.secondary
      
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 120),
        child: Center(child: Text(text,style: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,fontSize: 16
        ),),),
      ),
    );
  }
}
