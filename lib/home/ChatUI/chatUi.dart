import 'package:flutter/material.dart';
import 'package:flutter_list_app/home/ChatUI/category_selector.dart';

class ChatUiScreen extends StatefulWidget {
  @override
  _chatUiScreen createState() => _chatUiScreen();
}

class _chatUiScreen extends State<ChatUiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 20.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'ChatScreen',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelectorScreen(),
        ],
      ),
    );
  }
}