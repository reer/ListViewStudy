import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashbordPage extends StatefulWidget {
  @override
  _DashbordPageState createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFFFD4F99)
                  ),
                child: Center(
                  child: Icon(Icons.filter_list, color: Colors.white),
                ),
              ),
              Text(
                'HOME',
                style: GoogleFonts.montserrat(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w400,
                    textStyle: TextStyle(color: Colors.white)
                ),
              ),
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF353535)
                ),
                child: Center(
                  child: Icon(Icons.bookmark_border, color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
