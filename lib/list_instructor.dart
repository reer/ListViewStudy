import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListimstrutorPage extends StatefulWidget {
  @override
  _ListimstrutorPageState createState() => _ListimstrutorPageState();
}

class _ListimstrutorPageState extends State<ListimstrutorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAF6ED),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: null,
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Hello World !',
                      style: GoogleFonts.tinos(
                          fontSize: 25.0, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      onPressed: null,
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  'Flutter List Study. Lesson to ..',
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 15.0, fontWeight: FontWeight.w400, color: Color(0xFF5E5B54)),
                ),),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: null,),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.sourceSansPro(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF5E5B54)
                  ),
                  suffixIcon: IconButton(icon: Icon(Icons.filter_list),onPressed: null,),
                ),
              ),
            )
          ],
        ));
  }
}
