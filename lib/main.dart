import 'package:flutter/material.dart';
import 'package:flutter_list_app/card_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _cardList = List<CardList>();

  @override
  void initState() {
    _cardList.add(CardList(
      'Text1',
    ));
    _cardList.add(CardList(
      'Text2',
    ));
    _cardList.add(CardList(
      'Text3',
    ));
    _cardList.add(CardList(
      'Text4',
    ));
    _cardList.add(CardList(
      'Text5',
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViewApp'),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: _cardList.length,
              itemBuilder: (BuildContext context, int index) {
                return _cardList[index];
              },
          ),
        )
      ),
    );
  }

  Widget _menueItem(String title) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: new BoxDecoration(
          border: new Border(bottom: BorderSide(width: 1.0, color: Colors.red))
        ),
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
              )
            ),
          ],
        ),
      ),
    );
  }
}
