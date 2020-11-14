
import 'package:flutter/material.dart';
import 'package:flutter_list_app/instructor/list_instructor.dart';

import '../novel_design.dart';
import '../single_scroll_screen.dart';

class Home extends StatelessWidget {
  int _tabIndex;

  @override
  void initState() {
    _tabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text('ListView & Row & Padding', style: TextStyle(fontSize: 18)),
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
            GestureDetector(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: Text('SingleChildScreen', style: TextStyle(fontSize: 18)),
                ),
              ),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SingleChildScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

