import 'package:flutter/material.dart';
import 'package:flutter_list_app/card_list.dart';

import 'instructor/list_instructor.dart';
import 'novel_design.dart';

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
  MyHomePage({Key key, this.title, this.thumbnail}) : super(key: key);

  final String title;
  final thumbnail;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var _cardList = List<CardList>();
  //
  // @override
  // void initState() {
  //   _cardList.add(CardList(
  //     'Text1'
  //   ));
  //   _cardList.add(CardList(
  //     'Text2',
  //   ));
  //   _cardList.add(CardList(
  //     'Text3',
  //   ));
  //   _cardList.add(CardList(
  //     'Text4',
  //   ));
  //   _cardList.add(CardList(
  //     'Text5',
  //   ));
  //   _cardList.add(CardList(
  //     'Text6',
  //   ));
  //   _cardList.add(CardList(
  //     'Text7',
  //   ));
  //   _cardList.add(CardList(
  //     'Text8',
  //   ));
  //   _cardList.add(CardList(
  //     'Text9',
  //   ));
  //   _cardList.add(CardList(
  //     'Text10',
  //   ));
  //   _cardList.add(CardList(
  //     'Text11',
  //   ));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViewApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListimstrutorPage(),
                  ),
                );
              },
              // onPressed: () {
              //   Navigator.pushNamed(context, '/novel_design');
              // },
            ),
          ],

        ),
        body: ListView(
          // child: ListView.builder(
          //     itemCount: _cardList.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return _cardList[index];
          //     },
          // ),
          children: <Widget>[
            GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text('Instructor Screen', style: TextStyle(fontSize: 18)),
                ),
              ),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListimstrutorPage(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text('Plants Screen', style: TextStyle(fontSize: 18)),
                ),
              ),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NovelDesign(),
                  ),
                );
              },
            ),
          ],
        )
      ),
    );
  }
}
