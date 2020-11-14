import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  _samplePage createState() => _samplePage();
}

class _samplePage extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 50,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/a.png'),
              ),
              title: Text(
                '夏目漱石',
              ),
              subtitle: Text('「智に働けば角が立つ。情に棹させば流される。意地を通せば窮屈だ。兎角に人の世は住みにくい。」'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Text('Another data');
              },
            ),
             Container(
               height: 50,
             ),
             Column(
                 children: <Widget>[
                   SizedBox( // Horizontal ListView
                     height: 100,
                     child: ListView.builder(
                       itemCount: 3,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index) {
                         return Container(
                           width: 150,
                           alignment: Alignment.center,
                           color: Colors.blue[(index % 9) * 100],
                           child: Text(index.toString()),
                         );
                       },
                     ),
                   ),
                   SizedBox( // Horizontal ListView
                     height: 200,
                     child: ListView.builder(
                       itemCount: 1,
                       itemBuilder: (context, index) {
                         return Container(
                           width: 50,
                           height: 80,
                           alignment: Alignment.center,
                           color: Colors.orange,
                           child: Text(index.toString()),
                         );
                       },
                     ),
                   ),
                 ]
            )
          ],
        ),
      ),
    );
  }
}
    // return new Flexible(
    //   child: new Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       new Container(
    //         padding: new EdgeInsets.all(5.0),
    //         child: new Text(
    //           'hogehogehoge',
    //           style: new TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //       ),
    //       new DefaultTextStyle(
    //           style: new TextStyle(color: Colors.black),
    //           overflow: TextOverflow.ellipsis,
    //           maxLines: 3,
    //           child: new Padding(
    //             child: new Text('hogehogehhoge'),
    //             padding: new EdgeInsets.only(top: 10.0),
    //           )),
    //     ],
    //   ),
    // );

