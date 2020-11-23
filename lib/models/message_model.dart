import 'package:flutter_list_app/models/user_model.dart';

class Message {
  final User sender;
  final String
  time; // Would usually be type DateTime or Firebase Timestamp in production apps
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

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/jp1.png',
);

// USERS
final User Test1 = User(
  id: 1,
  name: 'Test1',
  imageUrl: 'assets/images/jp2.png',
);
final User Test2 = User(
  id: 2,
  name: 'Test2',
  imageUrl: 'assets/images/jp3.png',
);
final User Test3 = User(
  id: 3,
  name: 'Test3',
  imageUrl: 'assets/images/a.png',
);
final User Test4 = User(
  id: 4,
  name: 'Test4',
  imageUrl: 'assets/images/b.png',
);
final User Test5 = User(
  id: 5,
  name: 'Test5',
  imageUrl: 'assets/images/jp4.png',
);
final User Test6 = User(
  id: 6,
  name: 'Test6',
  imageUrl: 'assets/images/jp5.png',
);
final User Test7 = User(
  id: 7,
  name: 'Test7',
  imageUrl: 'assets/images/jp6.png',
);

// FAVORITE CONTACTS
List<User> favorites = [Test1, Test2, Test3, Test4, Test5];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: Test1,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Test2,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Test3,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Test4,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Test1,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Test2,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Test3,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: Test3,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Test4,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Test6,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];