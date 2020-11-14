import 'package:flutter/material.dart';

class SideScrollingScreen extends StatefulWidget {
  @override
  _sideScrollingScreen createState() => _sideScrollingScreen();
}

class _sideScrollingScreen extends State<SideScrollingScreen> {

  final List<String> numbers = ['今、夢を見ていた。又、会うぜ。きっと', 'は、みんなに愛されているうちに消えるのが一番良い','すべて神聖なものは夢や思い出と同じ要素から成立ち、時間', '人間は堕落する。義士も聖女も堕落する。それを防ぐことはで'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        // height: MediaQuery.of(context).size.height * 0.20,
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length, itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: GestureDetector(
              child: Card(
                color: Colors.white,
                child: Container(
                  child: Center(child: Text(numbers[index].toString(), style: TextStyle(color: Colors.black, fontSize: 15.0),)),
                ),
              ),
              onTap: (){
              },
            ),
          );
        }),
      ),
    );
  }
}
