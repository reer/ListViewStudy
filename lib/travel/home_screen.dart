
import 'package:flutter/material.dart';
import 'package:flutter_list_app/utiles/custom_app_bar.dart';


class HomeScreen extends StatefulWidget {
  @override
  _homeScreen createState() => _homeScreen();
}



class _homeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}