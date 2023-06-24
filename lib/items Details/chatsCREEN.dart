import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Chat Seller",style: TextStyle(color: Colors.white),),
        toolbarHeight: 120,
      ),

      body: Column(
        children:[
        Align(alignment: Alignment.bottomCenter,
          child: TextFormField(
            autocorrect: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.send),
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText:"Type your message here"
            ),
          ),
        ),
        ]
      ),
    );
  }
}
