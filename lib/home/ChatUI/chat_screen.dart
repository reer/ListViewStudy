import 'package:flutter/material.dart';
import 'package:flutter_list_app/models/message_model.dart';
import 'package:flutter_list_app/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _chatScreen createState() => _chatScreen();
}

class _chatScreen extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: ListView.builder(
                itemCount: chats.length,
                //buildContextにmessageモデルのindexが入ってくる
                itemBuilder: (BuildContext context, int index) {
                  //buildContextにmessageモデルのindexのtextのみ取得して表示
                  return Text(messages[index].text);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
