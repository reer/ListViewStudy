import 'package:flutter/material.dart';
import 'package:flutter_list_app/instructor/instructor_detail.dart';
import 'package:flutter_list_app/models/instructor.dart';
import 'package:google_fonts/google_fonts.dart';

class ListimstrutorPage extends StatefulWidget {
  @override
  _ListimstrutorPageState createState() => _ListimstrutorPageState();
}

class _ListimstrutorPageState extends State<ListimstrutorPage> {
  final instructors = allInstructors;
  var index = 1;
  List<bool> isSelected = List.generate(2, (_) => false);


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
                  onPressed: () {
                    Navigator.pop(context);
                  }
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
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5E5B54)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: null,
                  ),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.sourceSansPro(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFF5E5B54)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: null,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 200,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: 0.67,
                primary: false,
                children: <Widget>[
                  ...instructors.map((e) {
                    return buildInstructorGrid(e);
                  }).toList()
                ],
              ),
            )
          ],
        ),


      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(3.0),
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

  //画像の背景
  buildInstructorGrid(Instructor instuctor) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            // builder: (context) => InstructorDetails(selectInstructor)
              builder: (context) => InstructorDetails()
          ));
        },
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Container(height: 150.0,
              width: 100.0,
                color: Colors.transparent,
              ),
              Positioned(
                left: 30.0,
                top: 65.0,
                child: Container(
                  height: 30.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7.0,
                          color: Colors.grey.withOpacity(0.75),
                          offset: Offset(5,25),
                          spreadRadius: 12.0
                      )
                    ]
                  ),
                ),
              ),
              //画像を表示する
              Positioned(
                left: 12.0,
                top: 15.0,
                child: Hero(
                  tag: instuctor.instructorPic,
                  child: Container(
                    height: 110.0,
                    width: 85.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                        image: AssetImage(instuctor.instructorPic),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22.0,
                top: 138.0,
                child: Column(
                  children: <Widget>[
                    Text(instuctor.instructorName,
                      style: GoogleFonts.sourceSansPro(fontSize: 12.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(width: 3.0),
                        Text(
                          instuctor.rating,
                          style: GoogleFonts.sourceSansPro(fontSize: 11.0),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
