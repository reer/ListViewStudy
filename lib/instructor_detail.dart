import 'package:flutter/material.dart';
import 'package:flutter_list_app/models/instructor.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructorDetails extends StatefulWidget {
  final Instructor selectInstructor;

  InstructorDetails({this.selectInstructor});

  @override
  _InstructorDetailsState createState() => _InstructorDetailsState();
}

class _InstructorDetailsState extends State<InstructorDetails> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: screenHeight,
          width: screenWidth,
          color: Colors.transparent,
        ),
        Container(
          height: screenHeight - screenHeight / 3,
          width: screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/a.png'), fit: BoxFit.cover)),
        ),
          Positioned(
            top: screenHeight - screenHeight /3 - 25.0,
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              height: screenHeight / 3 + 25.0,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.0),
                  // Text(Widget.selectedInstructor.instructorName)
                  Text('Text', style: GoogleFonts.tinos(fontSize: 25.0, fontWeight: FontWeight.w500))
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFAF6ED),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))
              ),
            ),
        )
      ],
    ));
  }
}
