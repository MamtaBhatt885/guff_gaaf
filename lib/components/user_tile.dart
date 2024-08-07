import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
final String text;
final void Function()? onTap;

  const UserTile({super.key,required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(32),
        ),
    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.only(top:20.0,left: 20,bottom: 20),
        child: Row(
          children: [
            //Icon
            Icon(Icons.person,color:Theme.of(context).colorScheme.tertiary,size:24),
            const SizedBox(width: 20,),
            //User Name
            Text(text,style: TextStyle(color: Theme.of(context).colorScheme.tertiary,fontSize: 16),),
          ],
        ),
      ),)
      ,
    );
  }
}


