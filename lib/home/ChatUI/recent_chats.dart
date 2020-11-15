import 'package:flutter/material.dart';
import 'package:flutter_list_app/models/message_model.dart';

class RecentChatsScreen extends StatefulWidget {
  @override
  _recentChatsScreen createState() => _recentChatsScreen();
}

class _recentChatsScreen extends State<RecentChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
            //Messageモデルの "List<Message>chats" からデータ個数の取得
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              //Messageモデルのchats[index]でデータを取得
              //以下画面に表示させるMessageモデルのchatsへのデータ接続先になる場所がここ
              final Message chat = chats[index];
              return Container(
                //メッセージ部分のtopとbuttomの間隔調整
                margin: EdgeInsets.only(right: 20.0, top: 5.0, bottom: 5.0),
                //テキスト部分のListの間隔の調整
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                    //既読の場合、背景色を変える (演算子)
                    color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(chat.sender.imageUrl),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //Messageモデルのchatsデータのsenderのみ情報を表示
                            Text(
                              chat.sender.name,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5.0),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text(
                                chat.text,
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          chat.time,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        chat.unread? Container(
                          width: 40.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          alignment: Alignment.center,
                          child: Text('New',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                            : Text(''),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
