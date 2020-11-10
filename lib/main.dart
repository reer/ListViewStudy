import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_app/card_list.dart';

import 'buttomNavigation.dart';
import 'buttomView/home.dart';
import 'buttomView/setting.dart';
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
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
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

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_list, color: Colors.blue),
              title: Text('HOME')),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_list, color: Colors.blue),
              title: Text('SETTING')),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(// ページのヘッダ左のアイコン
                ),
                child: Home(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                ),
                child: Setting(),
              );
            });
        }
      },
    );
  }
}
