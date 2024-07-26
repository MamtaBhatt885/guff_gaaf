import 'package:flutter/material.dart';
import 'package:guff_gaaf/components/my_drawer.dart';
import 'package:guff_gaaf/services/auth/auth_services.dart';
import 'package:guff_gaaf/services/chat/chat_services.dart';

import '../../components/user_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});

//chat and auth services
final ChatService _chatService = ChatService();
final AuthService _authService = AuthService();

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
      body: _buildUserList(),
    );
  }

  //build a list of users except for the current logged in user
Widget _buildUserList(){
    return StreamBuilder(stream: _chatService.getUsersStream(),
        builder: (context,snapshot){
//error
if(snapshot.hasError){
  return const Text("Error");
}
        //loading
if(snapshot.connectionState==ConnectionState.waiting){
  return const Text("Loading");
}

          //return list view
          return  ListView(
            children: snapshot.data!.map<Widget>((userData)=> _buildUserListItem(userData,context)).toList(),
          );

        });
}
  //build individual list tile for user
Widget _buildUserListItem(Map<String,dynamic>userData, BuildContext context){
    //display all users except current users
if(userData["email"]!= _authService.getCurrentUser()!.email){
  return UserTile(
    text: userData["email"],
    onTap: (){
      //tapped on a user ->go to chat page
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>ChatPage(
            receiverEmail: userData["email"],
            receiverID: userData["uid"],
          )));

    },
  );
}else{
  return Container();
}
}


}
