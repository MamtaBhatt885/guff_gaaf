import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guff_gaaf/components/my_textfield.dart';
import 'package:guff_gaaf/services/auth/auth_services.dart';

import '../../services/chat/chat_services.dart';

class ChatPage extends StatelessWidget {
 final String receiverEmail;
 final String receiverID;

   ChatPage({super.key,
    required this.receiverEmail,
    required this.receiverID,
  });

  //text controller
 final TextEditingController _messageController = TextEditingController();

 //chat and auth services
 final ChatService _chatService = ChatService();
 final AuthService _authService = AuthService();

 //send message
 void sendMessage() async{
   //if there is something inside the textfield
   if(_messageController.text.isNotEmpty){
     //send the message
     await _chatService.sendMessage(receiverID, _messageController.text);

 //clear text controller
     _messageController.clear();
   }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(receiverEmail),),
      body: Column(
        children: [
          // display all messages
Expanded(
  child: _buildMessageList(),
),

          //user input
          _buildUserInput(),

        ],
      ),
    );
  }
  //build message list
Widget _buildMessageList(){
   String senderID = _authService.getCurrentUser()!.uid;
   return StreamBuilder(
       stream: _chatService.getMessages(receiverID, senderID),
       builder: (context, snapshot){
         //errors
         if(snapshot.hasError){
           return const Text("Error");
         }

         //loading
         if(snapshot.connectionState ==ConnectionState.waiting){
           return  const Text("Loading ....");
         }

         //return listview
         return ListView(
           children:
           snapshot.data!.docs.map((doc) => _buildMessageItem(doc)).toList(),
         );

       });
}

//build message item
Widget _buildMessageItem(DocumentSnapshot doc){
   Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

 return Text(data['message']);
 }
//build message input
Widget _buildUserInput(){
   return Row(children: [
     //textfield should take up most of the space
     Expanded(child: MyTextField(
       controller: _messageController,
       hintText: "Type a message",
       obscureText: false,
     ),
     ),
     
     //send button
     IconButton(onPressed: sendMessage, icon: Icon(Icons.arrow_upward),
     )
   ],);
}
}
