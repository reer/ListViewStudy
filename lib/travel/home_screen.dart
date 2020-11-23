import 'package:flutter/material.dart';
import 'package:flutter_list_app/travel/widgets.dart';
import 'package:flutter_list_app/utiles/custom_app_bar.dart';
import 'package:flutter_list_app/utiles/palette.dart';

class HomeScreen extends StatefulWidget {
  @override
  _homeScreen createState() => _homeScreen();
}

class _homeScreen extends State<HomeScreen> {
  String _country = 'USA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
        ],
      ),
    );
  }

  //AppBarの形を変更している。今回の場合角丸
  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Travel',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                CountryDropdown(
                  countries: ['FR', 'IN', 'IT', 'UK', 'USA', 'JP'],
                  country: _country,
                  onChanged: (val) => setState(() => _country = val),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'This condo is located in Málagas Cruz de Humilladero',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text('Toros de la Malagueta or Jose Maria Martin Carpena Arena',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              children: <Widget>[
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}