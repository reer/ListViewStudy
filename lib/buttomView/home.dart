
import 'package:flutter/material.dart';

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
        body: Center(
          child: RaisedButton(),
        ),
      ),
    );
  }
}

