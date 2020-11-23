import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_app/travel/buttom_nav_screen.dart';


class TravelScreen extends StatefulWidget {
  @override
  _travelScreen createState() => _travelScreen();
}

class _travelScreen extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),

      home: BottomNavScreen()
    );
  }
}
