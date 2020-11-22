import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TravelScreen extends StatefulWidget {
  @override
  _travelScreen createState() => _travelScreen();
}

class _travelScreen extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple500,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: VStack([
          VxBox().size(20, 2).white.make(),
          5.heightBox,
          VxBox().size(26, 2).white.make(),
          5.heightBox,
          VxBox().size(15, 2).white.make(),
        ]).pOnly(left: 16, top: 16),
      ),
    );
  }
}
