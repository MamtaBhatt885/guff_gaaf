// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
final String text;

  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 130),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
