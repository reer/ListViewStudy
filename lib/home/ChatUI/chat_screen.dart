import 'package:flutter/material.dart';
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
    return Scaffold();
  }
}