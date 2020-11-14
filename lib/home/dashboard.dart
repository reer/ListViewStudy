import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_app/buttomView/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailspage.dart';

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
              GestureDetector(
                child: Container(
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
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
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
        ),
        SizedBox(height: 5.0),
        Container(
          height: MediaQuery.of(context).size.height - 150.0,
          child: ListView(
            children: <Widget>[
              _buildListItem('assets/images/jp1.png', 'Mt.Fuji', 'Explore tha land of the rising night'),
              _buildListItem('assets/images/jp2.png', 'Kmakura', 'Explore tha land of the rising night'),
              _buildListItem('assets/images/jp3.png', 'Ajisai', 'Explore tha land of the rising night')
            ],
          ),
        )
      ],
    );
  }

  _buildListItem(String imgPath, String country, String description){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
              )
            ),
          ),
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    country,
                    style: GoogleFonts.montserrat(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.montserrat(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        textStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(imgPath: imgPath, title: country),
                        ),
                      );
                    },
                    child: Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text('Explore now',
                        style: GoogleFonts.montserrat(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          textStyle: TextStyle(color: Color(0xFFFD4F99))
                        ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
