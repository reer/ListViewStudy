import 'package:flutter/material.dart';

class CategorySelectorScreen extends StatefulWidget {
  @override
  _categorySelectorScreen createState() => _categorySelectorScreen();
}

class _categorySelectorScreen extends State<CategorySelectorScreen> {
  int selectIndex = 0;
  final List<String> categories = ['Message', 'Online', 'Group', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.indigoAccent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  // color: Colors.white,
                  color: index == selectIndex ? Colors.white : Colors.white60,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
