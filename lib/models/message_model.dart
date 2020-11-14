import 'package:flutter_list_app/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/a.png'
);

//Users: 登録ユーザー(?)
final User test1 = User(
    id: 0,
    name: 'Test1',
    imageUrl: 'assets/images/a.png'
);
final User test2 = User(
    id: 1,
    name: 'Test2',
    imageUrl: 'assets/images/a.png'
);
final User test3 = User(
    id: 2,
    name: 'Test3',
    imageUrl: 'assets/images/a.png'
);
final User test4 = User(
    id: 3,
    name: 'Test4',
    imageUrl: 'assets/images/a.png'
);
final User test5 = User(
    id: 4,
    name: 'Test5',
    imageUrl: 'assets/images/a.png'
);
final User test6 = User(
    id: 5,
    name: 'Test6',
    imageUrl: 'assets/images/a.png'
);
final User test7 = User(
    id: 6,
    name: 'Test7',
    imageUrl: 'assets/images/a.png'
);
final User test8 = User(
    id: 7,
    name: 'Test8',
    imageUrl: 'assets/images/a.png'
);
final User test9 = User(
    id: 8,
    name: 'Test9',
    imageUrl: 'assets/images/a.png'
);
final User test10 = User(
    id: 9,
    name: 'Test10',
    imageUrl: 'assets/images/a.png'
);
final User test11 = User(
    id: 10,
    name: 'Test11',
    imageUrl: 'assets/images/a.png'
);



//Likeした人
List<User> favorites = [test1, test2, test3, test4, test5];



//Chatしている人
List<Message> chats = [
  Message(
    sender: test1,
      time: '5:00 PM',
      text: 'こんにちは',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: test2,
    time: '5:00 PM',
    text: 'こんにちは!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: test3,
    time: '5:00 PM',
    text: 'Hey, how\'s it going?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: test4,
    time: '5:00 PM',
    text: 'Hey, how\'s it going?',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: test5,
    time: '5:00 PM',
    text: '楽しかったですね',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: test5,
    time: '5:00 PM',
    text: 'Hello!!',
    isLiked: true,
    unread: false,
  ),
];


















