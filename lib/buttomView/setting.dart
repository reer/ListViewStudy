import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<Setting> {
  var index = 1;
  List<bool> isSelected = List.generate(2, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ToggleButtons(
          borderColor: Colors.white,
          fillColor: Colors.white,
          borderWidth: 2,
          selectedBorderColor: Colors.white,
          selectedColor: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '登録順',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '講義別',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
          onPressed: (int index) {
            setState(() {
              // isSelected[index] = !isSelected[index];
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }

            });
          },
          isSelected: isSelected,
        ),
      ),
    );
  }
}
