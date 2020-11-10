import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String _text;

  CardList(this._text);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
        ListTile(
          leading: FlutterLogo(),
          title: Text(_text),
          subtitle: Text(
              "This is subtitle. Subtitle is very long and use three lines."),
          selected: true,
        )
      ]),
    );
  }
}
