
import 'package:flutter/material.dart';
import 'package:flutter_list_app/travel/widgets.dart';
import 'package:flutter_list_app/utiles/palette.dart';


class StatsScreen extends StatefulWidget {
  @override
  _statusScreen createState() => _statusScreen();
}



class _statusScreen extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),//共通化させたAppBarを呼び出す
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}