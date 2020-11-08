import 'package:flutter/material.dart';

import 'dashboard.dart';


class NovelDesign extends StatefulWidget {
  @override
  _noveldesign createState() => _noveldesign();
}



class _noveldesign extends State<NovelDesign> with SingleTickerProviderStateMixin {
  var selectedItem = 0;

  List children = [
    DashbordPage(),
    DashbordPage(),
    DashbordPage(),
    DashbordPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: children[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B1B1B),
        selectedItemColor: Color(0xFFFD4F99),
        iconSize: 27.0,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: Color(0xFF1B1B1B)),
        unselectedItemColor: Color(0xFF888888),
        onTap: (currIndex){
          setState(() {
            selectedItem = currIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.home),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.search),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.camera_alt),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.person_outline),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD4F99)
                ),
              )
          ),
        ],
      ),
    );
  }
}