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

  _buildMessage(Message message, bool isMe) {
    return Container(
      margin: EdgeInsets.only(top: 8.0, left: 80.0),
      color: Color(0xFFFFEFEE),
      child: Text(message.text),
    );
  }

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
              child: ClipRRect(
                borderRadius: (BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: chats.length,
                  //buildContextにmessageモデルのindexが入ってくる
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    //buildContextにmessageモデルのindexのtextのみ取得して表示
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
