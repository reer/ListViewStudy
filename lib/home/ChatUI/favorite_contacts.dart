import 'package:flutter/material.dart';
import 'package:flutter_list_app/home/ChatUI/chat_screen.dart';
import 'package:flutter_list_app/models/message_model.dart';

class FavoriteContactsScreen extends StatefulWidget {
  @override
  _favoriteContactsScreen createState() => _favoriteContactsScreen();
}

class _favoriteContactsScreen extends State<FavoriteContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), //ここでhorizontalを指定した場合、左右の枠が見える形で横スクロールする
      padding: EdgeInsets.symmetric(vertical: 10.0), //この画面で表示してる全ての要素の感覚を調整
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'favorite Contacts',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0), //itemの左側に感覚を空ける
              scrollDirection: Axis.horizontal, //itemを横並びにする
              //messageモデルのfavoritesからデータを取得
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(user: favorites[index]),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    //全体的な要素(画像部分)の感覚を空ける
                    child: Column(
                      children: <Widget>[
                        //messageモデルのfavoritesから、List<User>でUserモデルにアクセスをし、imageUrlを取得
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
