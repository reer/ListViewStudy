import 'package:flutter/material.dart';

class ChatUiScreen extends StatefulWidget {
  @override
  _chatUiScreen createState() => _chatUiScreen();
}

class _chatUiScreen extends State<ChatUiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            icon: Icon(Icons.menu),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          // CategorySelector(),
        ],
      ),
    );
  }
}
